class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.43/kennet_0.1.43_darwin-arm64.tar.gz"
      sha256 "9e962a0ed3a4e41990f5796e902ab9b98b34f3457c6125d4ae97aed5b3f7dc8d"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.43/kennet_0.1.43_darwin-x86_64.tar.gz"
      sha256 "7b498b60af0f4145466aca478d651256db87e97da4ba0afa8ebb559bb634b246"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.43/kennet_0.1.43_linux-arm64.tar.gz"
      sha256 "842eec2cc016f4c6e4db1c08d84e036b0584de26eed0e54f538d9686ada4c023"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.43/kennet_0.1.43_linux-x86_64.tar.gz"
      sha256 "0c6bd7183600599507cdb73a96eaaea00537cec894510c3479b808e76ece0247"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
