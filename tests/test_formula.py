"""scripts/formula.py: only a well-formed release becomes a formula, and nothing it reads can inject Ruby."""
import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "scripts"))
import formula  # noqa: E402

SHAS = {p: f"{i:x}" * 64 for i, p in enumerate(formula.PLATFORMS, start=10)}


def sums(version="1.2.3", shas=None, extra=""):
    shas = SHAS if shas is None else shas
    return "".join(f"{s}  kennet_{version}_{p}.tar.gz\n" for p, s in shas.items()) + extra


class Render(unittest.TestCase):
    def test_a_good_release_renders_every_platform(self):
        rb = formula.render("v1.2.3", sums())
        for p, s in SHAS.items():
            self.assertIn(f"/releases/download/v1.2.3/kennet_1.2.3_{p}.tar.gz", rb)
            self.assertIn(f'sha256 "{s}"', rb)
        self.assertNotIn("@", rb.replace("#{bin}", ""))

    def test_other_files_in_checksums_are_ignored(self):
        rb = formula.render("v1.2.3", sums(extra=f"{'0' * 64}  kennet_1.2.3_windows-x86_64.zip\n"))
        self.assertNotIn("windows", rb)

    def test_bad_tags_are_refused(self):
        for tag in ("1.2.3", "v1.2", "v1.2.3-rc1", "v1.2.3\n", 'v1.2.3"; system "id', "v1.2.3 ", "latest", ""):
            with self.subTest(tag=tag), self.assertRaises(formula.Invalid):
                formula.render(tag, sums())

    def test_bad_checksums_are_refused(self):
        for bad in ("A" * 64, "a" * 63, "a" * 65, '#{`id`}' + "a" * 57, "g" * 64):
            shas = dict(SHAS, **{"linux-arm64": bad})
            with self.subTest(sha=bad), self.assertRaises(formula.Invalid):
                formula.render("v1.2.3", sums(shas=shas))

    def test_a_missing_platform_is_refused(self):
        shas = {p: s for p, s in SHAS.items() if p != "darwin-x86_64"}
        with self.assertRaisesRegex(formula.Invalid, "darwin-x86_64"):
            formula.render("v1.2.3", sums(shas=shas))

    def test_checksums_for_another_version_do_not_count(self):
        with self.assertRaises(formula.Invalid):
            formula.render("v1.2.4", sums())

    def test_a_platform_listed_twice_is_refused(self):
        with self.assertRaisesRegex(formula.Invalid, "twice"):
            formula.render("v1.2.3", sums(extra=f"{'0' * 64}  kennet_1.2.3_linux-arm64.tar.gz\n"))

    def test_the_committed_formula_is_what_the_script_writes(self):
        rb = (Path(__file__).resolve().parents[1] / "Formula" / "kennet.rb").read_text()
        self.assertTrue(rb.startswith(formula.TEMPLATE.split("@URL@")[0]))


if __name__ == "__main__":
    unittest.main()
