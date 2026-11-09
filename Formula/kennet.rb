class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.42/kennet_0.1.42_darwin-arm64.tar.gz"
      sha256 "625180af9aafcb43d935257a52101086bc7778158329cf9bf0a726629e6941a2"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.42/kennet_0.1.42_darwin-x86_64.tar.gz"
      sha256 "a97e7e647279d0087be044b8d7ef416f48327a6b0f234e2ac8313633f2b23c06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.42/kennet_0.1.42_linux-arm64.tar.gz"
      sha256 "c597749a66453d5aba73f2b83e55bb3ed076a3256213c30d996588b076a9f64e"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.42/kennet_0.1.42_linux-x86_64.tar.gz"
      sha256 "dfeacee5ff096e0789d6467a5adc1d71b16fa8196916c6b1c5c780463f5541ea"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
