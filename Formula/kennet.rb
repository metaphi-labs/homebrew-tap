class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.15/kennet_0.1.15_darwin-arm64.tar.gz"
      sha256 "efa5c4c694551974d28d3842a9baf397b709a14e87b19eb7ba199e8ea50e883e"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.15/kennet_0.1.15_darwin-x86_64.tar.gz"
      sha256 "a98962783ce53f4a441419eee78661f32fe878e8c1d7b0f93b12e277f0b11402"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.15/kennet_0.1.15_linux-arm64.tar.gz"
      sha256 "03465c265bd8f632d73bf6c8fbe017cfc7bd4fdafc2ab540eb89e29aecbcedea"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.15/kennet_0.1.15_linux-x86_64.tar.gz"
      sha256 "1513dd2ac057d6230ce91c07939bf8ed77d2891f113a5c21d49a051c84ea5f88"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
