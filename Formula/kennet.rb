class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.41/kennet_0.1.41_darwin-arm64.tar.gz"
      sha256 "3266e8e9ea6d8194cda170de4d71783cb3646868484e10f04dc6f1793f3b30e9"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.41/kennet_0.1.41_darwin-x86_64.tar.gz"
      sha256 "f82c831fcb128729de472d7e6e36b791db9fff2606b91e082d1bedc3be59d770"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.41/kennet_0.1.41_linux-arm64.tar.gz"
      sha256 "838f0fef3f04ff622e5dbfc5b072badd8c40963d1844e775b992f44461cf40ad"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.41/kennet_0.1.41_linux-x86_64.tar.gz"
      sha256 "08e5735b22fab8454ee8ca35123aba9c06db9358b32dca2a52fcb709c6266f66"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
