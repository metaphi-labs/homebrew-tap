class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.23/kennet_0.1.23_darwin-arm64.tar.gz"
      sha256 "ff7dfe88d094403a339d3ea7c636bc2934225c2270eaaef1cc3b4baa7267a9fb"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.23/kennet_0.1.23_darwin-x86_64.tar.gz"
      sha256 "d1eba2ef00284cb86a7f4e4414cf94feaf2a80d396d42528fd804b7269ba82f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.23/kennet_0.1.23_linux-arm64.tar.gz"
      sha256 "2a71fbcf2935752276f9ad398702ac03c70f85cfe66b7afd69f42ef5f2b665e0"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.23/kennet_0.1.23_linux-x86_64.tar.gz"
      sha256 "2bf0d4f11f1666d06db0cdce7ca5c98387d3ecb5982adce8ac0f3e958b494ceb"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
