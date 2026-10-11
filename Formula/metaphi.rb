class Metaphi < Formula
  desc "Command-line interface for Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.2/metaphi_0.1.2_darwin-arm64.tar.gz"
      sha256 "c506f97a71aed357c8aa2de7ebb28e189cbd225e3e8f9be8058a0b6e383dd387"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.2/metaphi_0.1.2_darwin-x86_64.tar.gz"
      sha256 "96f77b8a8239cb2c0029199501722b568a4def2c61e7bafdb0f075dc634debcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.2/metaphi_0.1.2_linux-arm64.tar.gz"
      sha256 "3155050dfccbb6765f606f0bdceb1632e6166e3640a9f757faf4531c92bda074"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.2/metaphi_0.1.2_linux-x86_64.tar.gz"
      sha256 "80106100975f37d16b2369e373532a401a87d7502772f81d822e8b7dbf4485d3"
    end
  end

  def install
    bin.install "metaphi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metaphi --version")
  end
end
