class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.37/kennet_0.1.37_darwin-arm64.tar.gz"
      sha256 "f8a7c48ff869f6fc264027e2f5bbaf22ebd557a822fc9ac88ba047aead34d8b3"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.37/kennet_0.1.37_darwin-x86_64.tar.gz"
      sha256 "4349bd31cb9b01d22e956bd2a4a42446561d95b8550614e958a29ce2d46ac0d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.37/kennet_0.1.37_linux-arm64.tar.gz"
      sha256 "7ba0eb240e86b3c7ef0549b4e537fc98b609a01fdde2f05a18c8298cdb4fb45e"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.37/kennet_0.1.37_linux-x86_64.tar.gz"
      sha256 "a53d99a857849f03eb3590c5d5aef3a27dd7f00b3cb52c7c6025fdd5392039e9"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
