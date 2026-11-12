class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.49/kennet_0.1.49_darwin-arm64.tar.gz"
      sha256 "c8d7908234381c35bd09af0bedb9360cd01a35df530377b2a5bbdddf64fec795"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.49/kennet_0.1.49_darwin-x86_64.tar.gz"
      sha256 "d2dd720555bc80f3b89496e09272786c9e1703477eb080a0cc0c498cf98cb11a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.49/kennet_0.1.49_linux-arm64.tar.gz"
      sha256 "cd38cf3a916a1cb3d2d901a74f76c94120936eff7524db21a6b319aebb99d6d4"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.49/kennet_0.1.49_linux-x86_64.tar.gz"
      sha256 "2511838a410ee31aa8fc83c0419af35e7a8fa8c0a8aa9092ec272c007f9141f3"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
