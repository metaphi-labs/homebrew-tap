class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.25/kennet_0.1.25_darwin-arm64.tar.gz"
      sha256 "edd571dad970a37bfd26327332d234a4b57b4002e76da4358910a83c7c8e2349"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.25/kennet_0.1.25_darwin-x86_64.tar.gz"
      sha256 "06cb9ac98ad0426a3cf2863b9a1512396c3ee8a19d8adb3d7e375450c70881bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.25/kennet_0.1.25_linux-arm64.tar.gz"
      sha256 "f551529159d45e3b1398bdccc4644383cbf4f49eaf425f10c6c031bc00c49d58"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.25/kennet_0.1.25_linux-x86_64.tar.gz"
      sha256 "8258c08906177af5ef1da9cc76ca420e6974f262d7e72cc9859f5ff71e32a024"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
