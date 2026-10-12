"""Write Formula/kennet.rb from a release tag and its checksums.txt.

    python3 scripts/formula.py <tag> <checksums.txt> <Formula/kennet.rb>

Every value that reaches the Ruby file is validated first: the tag is vX.Y.Z, each checksum is 64 lowercase hex
characters, and all four platforms must be present exactly once. The formula is a fixed template; values are
substituted by name, never through a shell or Ruby string interpolation."""
from __future__ import annotations

import re
import sys
from pathlib import Path

REPO = "metaphi-labs/metaphi-ai-cli"
PLATFORMS = ("darwin-arm64", "darwin-x86_64", "linux-arm64", "linux-x86_64")
TAG = re.compile(r"v(\d+\.\d+\.\d+)")
SHA = re.compile(r"[0-9a-f]{64}")

TEMPLATE = '''class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "@URL@_darwin-arm64.tar.gz"
      sha256 "@SHA_darwin-arm64@"
    end
    on_intel do
      url "@URL@_darwin-x86_64.tar.gz"
      sha256 "@SHA_darwin-x86_64@"
    end
  end

  on_linux do
    on_arm do
      url "@URL@_linux-arm64.tar.gz"
      sha256 "@SHA_linux-arm64@"
    end
    on_intel do
      url "@URL@_linux-x86_64.tar.gz"
      sha256 "@SHA_linux-x86_64@"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
'''


class Invalid(ValueError):
    pass


def version_of(tag: str) -> str:
    m = TAG.fullmatch(tag)
    if not m:
        raise Invalid(f"tag {tag!r} is not vX.Y.Z")
    return m.group(1)


def checksums(text: str, version: str) -> dict[str, str]:
    """{platform: sha256} from sha256sum output; every platform exactly once, every sha 64 lowercase hex."""
    found: dict[str, str] = {}
    for line in text.splitlines():
        if not line.strip():
            continue
        parts = line.split()
        if len(parts) != 2:
            raise Invalid(f"unreadable checksums line: {line!r}")
        sha, name = parts[0], parts[1].lstrip("*")
        for platform in PLATFORMS:
            if name == f"kennet_{version}_{platform}.tar.gz":
                if not SHA.fullmatch(sha):
                    raise Invalid(f"checksum for {platform} is not 64 lowercase hex characters")
                if platform in found:
                    raise Invalid(f"{platform} is listed twice")
                found[platform] = sha
    missing = [p for p in PLATFORMS if p not in found]
    if missing:
        raise Invalid(f"checksums.txt has no entry for {', '.join(missing)}")
    return found


def render(tag: str, checksums_text: str) -> str:
    version = version_of(tag)
    shas = checksums(checksums_text, version)
    out = TEMPLATE.replace("@URL@", f"https://github.com/{REPO}/releases/download/{tag}/kennet_{version}")
    for platform, sha in shas.items():
        out = out.replace(f"@SHA_{platform}@", sha)
    if "@" in out.replace("#{bin}", ""):
        raise Invalid("template left a placeholder unfilled")
    return out


def main(argv: list[str]) -> int:
    if len(argv) != 3:
        print(__doc__, file=sys.stderr)
        return 2
    tag, sums, dest = argv
    try:
        text = render(tag, Path(sums).read_text())
    except Invalid as e:
        print(f"formula: {e}", file=sys.stderr)
        return 1
    Path(dest).write_text(text)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
