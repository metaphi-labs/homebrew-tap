class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.33/kennet_0.1.33_darwin-arm64.tar.gz"
      sha256 "1cbe2add6fcd8ff1b39e8e0efcadb86a1bc2a90eb4e4552c90a13a660651949b"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.33/kennet_0.1.33_darwin-x86_64.tar.gz"
      sha256 "dde9bd832bc11bb73f918921126bc26c6bdb8ba26cb22d667bdb35a35440a91a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.33/kennet_0.1.33_linux-arm64.tar.gz"
      sha256 "f1a37c4e212045c2a991e8e83e3b78412298d1e326df9f4f36a7848e39b53725"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.33/kennet_0.1.33_linux-x86_64.tar.gz"
      sha256 "19e5e7b67ea98e60a93e7180676956bbbe6c06fc3e3fe126b2f8b90e7eff1f84"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
