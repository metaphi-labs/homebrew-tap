class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.60/kennet_0.1.60_darwin-arm64.tar.gz"
      sha256 "78fb99f78f4bcaab144d3d326a1892de4f7795405be98ac208a068550948efb1"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.60/kennet_0.1.60_darwin-x86_64.tar.gz"
      sha256 "e40806ef66af4710e4a47463c01177891230698df54f771c52d1b706a273e6b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.60/kennet_0.1.60_linux-arm64.tar.gz"
      sha256 "4272f53904c2e5908fdc6236215eabadf25a88d2328f53f00eba731cf8a8c545"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.60/kennet_0.1.60_linux-x86_64.tar.gz"
      sha256 "0f8e4d59842d6b3e6890a7d60d71fd699123f6fc64c165760fb69e9a39fc53c1"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
