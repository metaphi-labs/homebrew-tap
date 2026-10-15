class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.18/kennet_0.1.18_darwin-arm64.tar.gz"
      sha256 "2dd2d8c2e3e954d502ea1e77929ffaeef3f2512c484f5cb854f127f2df6134ed"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.18/kennet_0.1.18_darwin-x86_64.tar.gz"
      sha256 "7393f8566c85adccfaa36306aaf89c70b5161b3f3f8c78bd260c9a1e5cd78f97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.18/kennet_0.1.18_linux-arm64.tar.gz"
      sha256 "976495286a6f13c5e4c5415744a34fe5a0712c53b3ab14ec2d3ee322cfa853cf"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.18/kennet_0.1.18_linux-x86_64.tar.gz"
      sha256 "4808672ba6642502d45ab3afa33249848b902844aa11c89a96c28e085a65b267"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
