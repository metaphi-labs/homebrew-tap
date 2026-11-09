class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.45/kennet_0.1.45_darwin-arm64.tar.gz"
      sha256 "1ee15040dad518ea274954890deba26adf5489b5cb53f48a656ed8405bb77eee"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.45/kennet_0.1.45_darwin-x86_64.tar.gz"
      sha256 "6d60e66c74617ae35151128d69f356c6007ce2d764b1ca5e73159772e1cda5b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.45/kennet_0.1.45_linux-arm64.tar.gz"
      sha256 "83910e06a421a459ec8ad8420b1345640fbecffc7c451c26c4659f8cacaf7f91"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.45/kennet_0.1.45_linux-x86_64.tar.gz"
      sha256 "1663b0fa2b72f0e887dbc732b3197bc4e3397261b9e9ef04ddd63d406c6e69c8"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
