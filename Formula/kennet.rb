class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.44/kennet_0.1.44_darwin-arm64.tar.gz"
      sha256 "776beec177f9c10fcde46d2f4146df1d8affe7b2ff66d98c00ff7f02ea00d843"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.44/kennet_0.1.44_darwin-x86_64.tar.gz"
      sha256 "60e33f818930b833f0310ec198cd387e8d947f0a9c82658420a295c06506f2df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.44/kennet_0.1.44_linux-arm64.tar.gz"
      sha256 "f9e537d1c0f6e17daee9a8857bd1583091096524a4dd7dc8cb55704cab08b22a"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.44/kennet_0.1.44_linux-x86_64.tar.gz"
      sha256 "23f349d26a7b0c436a1e33607910a921f5ee3af6928b08d3a141b0fe983a657b"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
