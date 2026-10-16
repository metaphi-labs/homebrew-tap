class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.19/kennet_0.1.19_darwin-arm64.tar.gz"
      sha256 "e940bf7c5e8f75a705860ffdbfb8c866be3d0a1ffdba49513e1138811f9b0ad3"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.19/kennet_0.1.19_darwin-x86_64.tar.gz"
      sha256 "affbb065a69891d9e2677e81d6ac165433e6f67752ebce0581444d197c054af3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.19/kennet_0.1.19_linux-arm64.tar.gz"
      sha256 "c461d70d0f961fc37dac3890a431a6511984aebbd886c8a1eb28048dcd069a0d"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.19/kennet_0.1.19_linux-x86_64.tar.gz"
      sha256 "aadaed50849120b4e34488a5b22e4604880ae1178870ccfa3ed38a99efd382a4"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
