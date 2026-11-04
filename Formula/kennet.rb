class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.34/kennet_0.1.34_darwin-arm64.tar.gz"
      sha256 "61486c465aba3ab9b0b9c53b3fe0ef84966e56a6b43d34dbcabe1420bfa59da5"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.34/kennet_0.1.34_darwin-x86_64.tar.gz"
      sha256 "8077558883e3d0e4c817e21cd34b7d41757e542670ff93985d8695ccd9d13272"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.34/kennet_0.1.34_linux-arm64.tar.gz"
      sha256 "2516f90ffa522ee62afb910982db0d15db0436023e74efa0aca0de63ceb6ae07"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.34/kennet_0.1.34_linux-x86_64.tar.gz"
      sha256 "dbff2659c374bd2fe0f5aa3850f6e19530f1ab4e9ab133ca379f626afd47cc05"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
