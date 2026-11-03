class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.27/kennet_0.1.27_darwin-arm64.tar.gz"
      sha256 "fe3ac1863b5de87fe3da0599a042d4575bad94b2fcc6071e1e34a08b0c1207f7"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.27/kennet_0.1.27_darwin-x86_64.tar.gz"
      sha256 "d3fdd8f1fb062f95728bfb9c9cceca1ccc8ef7c097a4bf04b80e69b6b2263437"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.27/kennet_0.1.27_linux-arm64.tar.gz"
      sha256 "904d869daa5fde88fabdbee706b76873e276bc2442ca5890a08b8a8d7e01e65c"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.27/kennet_0.1.27_linux-x86_64.tar.gz"
      sha256 "17fb248d9b7a1466751d0fb16633e82a6d85e46ccfb7f226d4bf362647d6daba"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
