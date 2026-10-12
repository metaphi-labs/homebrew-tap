class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.5/metaphi_0.1.5_darwin-arm64.tar.gz"
      sha256 "9d051deda0a05a8a15314f387ccbdd7732d2f097ec3f7fd959d4b86199e20d6a"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.5/metaphi_0.1.5_darwin-x86_64.tar.gz"
      sha256 "25152fb72c52137f483fb8e962fd48cb3a513008ce2622cdf46a4c3723b09e68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.5/metaphi_0.1.5_linux-arm64.tar.gz"
      sha256 "7e0a3c4d0cc87793efbc99cb96afef636c67e308e1087cfb36d67ee0d637ac72"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.5/metaphi_0.1.5_linux-x86_64.tar.gz"
      sha256 "5fcc40c56a34bd132254b318ff924754cf7c5025d93883b6443423c0ddfc04e3"
    end
  end

  def install
    bin.install "metaphi" => "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
