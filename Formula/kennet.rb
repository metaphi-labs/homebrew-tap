class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.51/kennet_0.1.51_darwin-arm64.tar.gz"
      sha256 "bf850dfccd0a3c90e655c904bd35b1ca0d2cdf9c0110c548552d0b7e5fb09812"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.51/kennet_0.1.51_darwin-x86_64.tar.gz"
      sha256 "0477977f8e9b040db622bcce5b9cd106c6b14e701c32d1a5f4c07500964d3a9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.51/kennet_0.1.51_linux-arm64.tar.gz"
      sha256 "c66498178f3ccdd6a6165db7e94ba41407795e748b41721461d4789bf3d5adf0"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.51/kennet_0.1.51_linux-x86_64.tar.gz"
      sha256 "01a69e45d133548bc5588c9015ce620959572f150a3261ef45c681875885d637"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
