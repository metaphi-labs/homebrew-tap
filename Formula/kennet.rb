class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.29/kennet_0.1.29_darwin-arm64.tar.gz"
      sha256 "3c70ba6a0f489934e51d87fc3d17a929fe2b926ccda0ce0673627021a8a15637"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.29/kennet_0.1.29_darwin-x86_64.tar.gz"
      sha256 "82149ec8bd20d2928425616c09118a5ab4c2374daac0b1fc70d9e2c6e1e065a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.29/kennet_0.1.29_linux-arm64.tar.gz"
      sha256 "0d541f923dd7d137c20c026de8f0609f5099b42e26657d084bb1600009110665"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.29/kennet_0.1.29_linux-x86_64.tar.gz"
      sha256 "26291a62b2839323447e7f5b240059e388da897e3f468db7466ae5f49bb0bffe"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
