class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.17/kennet_0.1.17_darwin-arm64.tar.gz"
      sha256 "61241807ff7da5d8472c949ad5769a1da5af19c2c163477b8d5dae6d64b61ded"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.17/kennet_0.1.17_darwin-x86_64.tar.gz"
      sha256 "26103f4ca0a1bc0ef024e28455720c035194b5f2fe97c97b1cffb89fabdd4045"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.17/kennet_0.1.17_linux-arm64.tar.gz"
      sha256 "d2e09f46b5034596e7cdc3855cad190556f4b0e56507f3f6a9dc169e44e0c354"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.17/kennet_0.1.17_linux-x86_64.tar.gz"
      sha256 "928d1f2408e85ec36474ad08762c56f8d347276b429d3b07d2f079a3f4d9d16f"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
