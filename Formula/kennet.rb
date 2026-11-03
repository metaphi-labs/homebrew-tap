class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.28/kennet_0.1.28_darwin-arm64.tar.gz"
      sha256 "1a736cc2073031c89499cdab4039371e0bb00bd5daac828385d9828b8805a065"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.28/kennet_0.1.28_darwin-x86_64.tar.gz"
      sha256 "035db293ee5ad30d6d91639da2a5eec91c5f2f24cc3a11a8bc4b2d0d67b08c93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.28/kennet_0.1.28_linux-arm64.tar.gz"
      sha256 "334028da8340f568705f34a2b8919323d19917a4ecfa6eecf88bff02693aa047"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.28/kennet_0.1.28_linux-x86_64.tar.gz"
      sha256 "4b7b5d56b6916454b8aec6fbd0025924afc779bcc8cfc0c1677ad08f88a3e30d"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
