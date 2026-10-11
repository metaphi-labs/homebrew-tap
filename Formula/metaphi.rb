class Metaphi < Formula
  desc "Command-line interface for Metaphi AI"
  homepage "https://docs.metaphi.ai"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.1/metaphi_0.1.1_darwin-arm64.tar.gz"
      sha256 "ca67ffae2a201ebbf5d70ec742cdd205a1ddb6bbb9f6a47ac883c084f8d54807"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.1/metaphi_0.1.1_darwin-x86_64.tar.gz"
      sha256 "dfdbeac9c016cd85c7180aff90b53e77cd6887e488fd261eafdb6e1370412d51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.1/metaphi_0.1.1_linux-arm64.tar.gz"
      sha256 "99e052c1ed380fa70a07b0371ab31cb01363b58728747a6622a0d27bb53d5040"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.1/metaphi_0.1.1_linux-x86_64.tar.gz"
      sha256 "3b7518b41d55ff2ad4f63b623e60bfce3ac31403a682e5605a9f3b3919a0b043"
    end
  end

  def install
    bin.install "metaphi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metaphi --version")
  end
end
