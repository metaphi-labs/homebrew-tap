class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.55/kennet_0.1.55_darwin-arm64.tar.gz"
      sha256 "edcd9e0f97086b0a2cf9fa3a2f0a6863f60182f6036ce1ffaa76a8ed983e9be4"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.55/kennet_0.1.55_darwin-x86_64.tar.gz"
      sha256 "fb9aa6cfaffbcb3f342e9ccaf30748ecfa428c2189ba0a843f38f6f02b5f3ffc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.55/kennet_0.1.55_linux-arm64.tar.gz"
      sha256 "2ad1937e6d0cbc01e2664f55bc799ccbb72360fb83c6db8506a730822bf0df33"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.55/kennet_0.1.55_linux-x86_64.tar.gz"
      sha256 "221d43ba0c3ccbda81425ed46c5d729772fbc4d806f644afa0a5ab400ffb46a7"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
