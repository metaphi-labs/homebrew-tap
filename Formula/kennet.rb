class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.48/kennet_0.1.48_darwin-arm64.tar.gz"
      sha256 "630b5db7b8f4c1256c966b61c9364b054d5850bb6b8d2ab9be513fd4b1393b59"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.48/kennet_0.1.48_darwin-x86_64.tar.gz"
      sha256 "1a5f5c96fc7f487a54a18c4f32652b4b3b6af74370769c661901c346cf2f6ac6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.48/kennet_0.1.48_linux-arm64.tar.gz"
      sha256 "b6e2baa99c27fc18a87f88fe52e3df044e67ebc827329587e8498dfd87100474"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.48/kennet_0.1.48_linux-x86_64.tar.gz"
      sha256 "3d167d42fe0782668beb5af5b4b150c3840a88edadaa7f9a36f999332808eec6"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
