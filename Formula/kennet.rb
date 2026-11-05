class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.40/kennet_0.1.40_darwin-arm64.tar.gz"
      sha256 "d34841be3a8c3e5db8878892ffd3bed96810c78523d5796cb95da7daa1c46a74"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.40/kennet_0.1.40_darwin-x86_64.tar.gz"
      sha256 "7c85e799ca44455f4a4c0c75a5691ab36cd7c8bfce8d0e05bb74f3755251b38e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.40/kennet_0.1.40_linux-arm64.tar.gz"
      sha256 "0ce09add05f4263be46d4dc38a13d5b5aa5826bc9c99e09c11e222e2cd106f43"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.40/kennet_0.1.40_linux-x86_64.tar.gz"
      sha256 "425609d5b1a4a31bcc553bf5818401c7d867bee9591bfaca7772db4d2be1acd0"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
