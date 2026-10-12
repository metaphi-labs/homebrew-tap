class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.6/kennet_0.1.6_darwin-arm64.tar.gz"
      sha256 "cc52806842a106010f3fe21e5895a3ad2eddce135348003ba29c5ec15d771bfc"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.6/kennet_0.1.6_darwin-x86_64.tar.gz"
      sha256 "c8d4dcb63392797e047b5c0a309ccabd211ee90a0abb7afb9192b96bd4cac1a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.6/kennet_0.1.6_linux-arm64.tar.gz"
      sha256 "09de0abe5e08bf0680e96060dc3341c5e434613b327b390f03e52e7b0bf13963"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.6/kennet_0.1.6_linux-x86_64.tar.gz"
      sha256 "e5fc226601fdfb7766648358e9ea799169051c7b266b79f4edc5a34bac5049b4"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
