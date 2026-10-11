# Metaphi AI Homebrew tap

```sh
brew install metaphi-labs/tap/metaphi
```

Formulas here are written by the release of [metaphi-ai-cli](https://github.com/metaphi-labs/metaphi-ai-cli).

`scripts/formula.py` writes `Formula/metaphi.rb` from the latest release: the tag must be `vX.Y.Z`, every platform's
checksum must be 64 hex characters, every tarball must match `checksums.txt`, and from 0.1.2 on each file must carry a
build provenance attestation from the CLI's release workflow (`gh attestation verify`).
