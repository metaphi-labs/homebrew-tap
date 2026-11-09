class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.46/kennet_0.1.46_darwin-arm64.tar.gz"
      sha256 "8a1bb1f4126ee2fbe40f7c2549d330b1b72c9eac02092329dd54adf8f9ee410e"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.46/kennet_0.1.46_darwin-x86_64.tar.gz"
      sha256 "c836eb333f76ee5ed2cf42807bc189b4937c41d51b301aa1653a0e0306fe599d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.46/kennet_0.1.46_linux-arm64.tar.gz"
      sha256 "39dd17fa123d6ca4f20bb09b84213f1d8372bde2fd27585b9044a50f8ad089cc"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.46/kennet_0.1.46_linux-x86_64.tar.gz"
      sha256 "4b9d2dec4535dbcdae8e87f914b897cac0f4a7203e8b8dca16e063984dc755ab"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
