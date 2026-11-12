class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.50/kennet_0.1.50_darwin-arm64.tar.gz"
      sha256 "17f4fc76ac111260f5f8466ac1edb4da280deeb4888bc10e03956ce94188fd61"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.50/kennet_0.1.50_darwin-x86_64.tar.gz"
      sha256 "217ba8aaada73c365e6eda0184333e7eb62e0aa2b07b9d789f2198b36774ea0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.50/kennet_0.1.50_linux-arm64.tar.gz"
      sha256 "6f03c63a9f9d7d878ef13cd01cef617f7d3846ddd3441f7ba7c51225978e28cb"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.50/kennet_0.1.50_linux-x86_64.tar.gz"
      sha256 "0fd58f37bba83fe89b646a4a3da59f309c93eb2a67ef99af7f54afe84aca64e1"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
