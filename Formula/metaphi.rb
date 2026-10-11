class Metaphi < Formula
  desc "Command-line interface for Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.4/metaphi_0.1.4_darwin-arm64.tar.gz"
      sha256 "c8857d9649f126d722f5f33e3818329cc582c4f8eb2d622a13e7a4899e2f35de"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.4/metaphi_0.1.4_darwin-x86_64.tar.gz"
      sha256 "43fc732b6b0c72442282b2a5da5057cf9c440cbcad112f8156c57ed26b052dd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.4/metaphi_0.1.4_linux-arm64.tar.gz"
      sha256 "a8dac23e0a7d35b4227ce773a1e0d8c6af19d174a12ef55d751ce125ddd71c30"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.4/metaphi_0.1.4_linux-x86_64.tar.gz"
      sha256 "17659e670e66d3443db005418ac5c4731ab729490fdbfca8cd821e38fb9bb8b4"
    end
  end

  def install
    bin.install "metaphi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metaphi --version")
  end
end
