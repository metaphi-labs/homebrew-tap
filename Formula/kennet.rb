class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.8/kennet_0.1.8_darwin-arm64.tar.gz"
      sha256 "1c07b2f3fe53c50980ef648bacbb3ca587f002f3ad12bc57bcd8c0426b9f5226"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.8/kennet_0.1.8_darwin-x86_64.tar.gz"
      sha256 "c889bdc525cb845128d5f5430b6094713fda33116fb5cb1f5b9b2e89a2f2e814"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.8/kennet_0.1.8_linux-arm64.tar.gz"
      sha256 "4134339b6c0f8c9427052ddf88f199f28ec3120a145206146dfbaccc3d532177"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.8/kennet_0.1.8_linux-x86_64.tar.gz"
      sha256 "d35608824a9b6e63dcc624d55cf22fb49336b8fb0aaa168830342b049d90046c"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
