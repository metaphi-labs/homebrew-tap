class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.32/kennet_0.1.32_darwin-arm64.tar.gz"
      sha256 "0ba9d120d96cb709f24ef67b363834eecd0311ce1ca6c884182f0f6649808c74"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.32/kennet_0.1.32_darwin-x86_64.tar.gz"
      sha256 "9fcea3c291b7e44ee2f2675dc12fb2cb72e9a2c19fdbbce811d5d89577607511"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.32/kennet_0.1.32_linux-arm64.tar.gz"
      sha256 "f69c500585f1208013bfc820a5eb2adb308570b02fd6642323706c7f43f4256d"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.32/kennet_0.1.32_linux-x86_64.tar.gz"
      sha256 "7b3e2340803888c64537c19e619dec6895b9edf7498fd2a1a2cd6d94e45bf85a"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
