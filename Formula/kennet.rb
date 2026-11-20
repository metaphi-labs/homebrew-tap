class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.62/kennet_0.1.62_darwin-arm64.tar.gz"
      sha256 "c433ba1f0723687cb7b6a2b63e8bb5f859e3ce786a889c680499da7244700cb2"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.62/kennet_0.1.62_darwin-x86_64.tar.gz"
      sha256 "727ad9ba185060965337d673c70de2dadd32b65e04f92221c966c653f944ce0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.62/kennet_0.1.62_linux-arm64.tar.gz"
      sha256 "7e0bfb31612dc6f5acf4cc6d27198d87962ea2649c4ccfeb887b6bf621916735"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.62/kennet_0.1.62_linux-x86_64.tar.gz"
      sha256 "b40171f5d1ffc98a5a73606ed57bc45f2741591523ffc6d8524e64d95d43c84d"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
