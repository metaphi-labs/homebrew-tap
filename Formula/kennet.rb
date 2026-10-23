class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.22/kennet_0.1.22_darwin-arm64.tar.gz"
      sha256 "0b55275b9c6ef2f6e7cb9db42160fe8b8c305e897143e68e8f9d4b94f1c4f842"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.22/kennet_0.1.22_darwin-x86_64.tar.gz"
      sha256 "18e13b47a1a5c8a4b57d0859f8411b6fdf22b255fd745f14b8fb63ae36198e08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.22/kennet_0.1.22_linux-arm64.tar.gz"
      sha256 "32b9bde9485eb112ab32153b1000da222b32d9e3045a85ef0f3a04546f3b91fb"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.22/kennet_0.1.22_linux-x86_64.tar.gz"
      sha256 "ac6316f4cf16f989c050a13f3bb36bd1dc56b5b0026022bb8a604f4a8646eb25"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
