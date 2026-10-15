class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.16/kennet_0.1.16_darwin-arm64.tar.gz"
      sha256 "9c03493adc7c30e7e242cdc91680c6cb2ec572b0c61d4741245983330f96e6d5"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.16/kennet_0.1.16_darwin-x86_64.tar.gz"
      sha256 "5562f0f69db789ee2a06f35457bbe824b95fbfb9929144338ca3867fd9b1a2d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.16/kennet_0.1.16_linux-arm64.tar.gz"
      sha256 "78318400a93bc8c1fb6ec7d8f8be29d7fc74666365edb4e277b79d1a67881229"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.16/kennet_0.1.16_linux-x86_64.tar.gz"
      sha256 "94d608f43bec63a810e30deacfe3cf3287ae7a76679a72c86f6c0373c3ab7ff4"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
