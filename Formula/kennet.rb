class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.36/kennet_0.1.36_darwin-arm64.tar.gz"
      sha256 "62687cf16e1db9ae703c9bb9f31c1c61b580f0aac62c8bdc07dffe8aa25558e3"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.36/kennet_0.1.36_darwin-x86_64.tar.gz"
      sha256 "e2f06b057c94d9a68cb1d620b150fd12dc73f5ea20e064451f7fdcb7cca9fb2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.36/kennet_0.1.36_linux-arm64.tar.gz"
      sha256 "07e26843f87eab1aed96529290d84fea5cc56737d25cda3fd0c7432c010d8c6a"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.36/kennet_0.1.36_linux-x86_64.tar.gz"
      sha256 "2db7216a66cf46d20235db71866fcb36346f071e9aa70a4d431187e8f2b320e7"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
