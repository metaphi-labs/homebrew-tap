class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.54/kennet_0.1.54_darwin-arm64.tar.gz"
      sha256 "91da29ff6db3ba7df9146ac6705dde099477cef65d1329337ca419c9cc695b7d"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.54/kennet_0.1.54_darwin-x86_64.tar.gz"
      sha256 "593323a4f1584585c7e167af048fb498e3e4cdb3b83acd6400cfef117213bdce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.54/kennet_0.1.54_linux-arm64.tar.gz"
      sha256 "bfbb461d18ca6feb58d5f0d9ca79fc2fd853ad2180447b56b807a4911bc3cfd1"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.54/kennet_0.1.54_linux-x86_64.tar.gz"
      sha256 "f81e42c6c6dec30932d501b3da2080a957dbf37a0df68a461be719899ba7680a"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
