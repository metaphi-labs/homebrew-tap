class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.57/kennet_0.1.57_darwin-arm64.tar.gz"
      sha256 "8ca77f8b1d3723e211d3b8fd42dc140ad1d26d5ac40019710f1444f864143555"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.57/kennet_0.1.57_darwin-x86_64.tar.gz"
      sha256 "9b05b029bb3eb6f2496c31d7798bc41327ca41fa3b1fd4a226f40435b14d4cc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.57/kennet_0.1.57_linux-arm64.tar.gz"
      sha256 "5142355ce92e84cafcbe1e52559b16cf39b02fc2c5ebb1730b30cacbdd35734e"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.57/kennet_0.1.57_linux-x86_64.tar.gz"
      sha256 "d167239434512a2402c28e417a8bfcb8a85b14c418a5243e55589420cb245c30"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
