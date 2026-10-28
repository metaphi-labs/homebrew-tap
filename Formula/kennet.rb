class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.24/kennet_0.1.24_darwin-arm64.tar.gz"
      sha256 "1acc3eb521e1b69173d2186fc874c4978df2f63ec16402288f470a2c8a06c0f2"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.24/kennet_0.1.24_darwin-x86_64.tar.gz"
      sha256 "709b9e99cd079676659490640fd64366ebe0d70f419b94bbe9e77022815ce0d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.24/kennet_0.1.24_linux-arm64.tar.gz"
      sha256 "d6c4942cf8e237304e8f012e8cc4482ddf09efc56dda6e115dba5e0f3405f083"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.24/kennet_0.1.24_linux-x86_64.tar.gz"
      sha256 "cee5ce3ac8bb23106493b8b95ae5c78bb07c34d9bd6e5f1d8b2d2c4c0e195058"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
