class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.14/kennet_0.1.14_darwin-arm64.tar.gz"
      sha256 "a1ea923030442d0945d3c518dd4a76a7ca774265ddf72bcfee38df693d4ff951"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.14/kennet_0.1.14_darwin-x86_64.tar.gz"
      sha256 "455fa0e9ddcf58777e0ac04c27f0016340f74fad2f5f5cb7df549163eb1285fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.14/kennet_0.1.14_linux-arm64.tar.gz"
      sha256 "e5d6c9181a5677c8f36548da2cc6c937917ff9df63d1ee3fffa6470145905d04"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.14/kennet_0.1.14_linux-x86_64.tar.gz"
      sha256 "e9a268d433f5346c218e046be457dcea5caf88bd1977e456c4804f29d153c8e7"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
