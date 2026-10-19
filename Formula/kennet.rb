class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.20/kennet_0.1.20_darwin-arm64.tar.gz"
      sha256 "09569fb64d112e65d842ac037ef4f89a265d4902e1992a4669ec999f56348667"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.20/kennet_0.1.20_darwin-x86_64.tar.gz"
      sha256 "0c54914a9bb8c37279dd448a6bbd7155d605463ddd99ae4363765df4ef09a967"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.20/kennet_0.1.20_linux-arm64.tar.gz"
      sha256 "8dacbd2c8a7cc3a2939c88d1058a9d5640632e3fb8e5fa0be4b02ffa18684148"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.20/kennet_0.1.20_linux-x86_64.tar.gz"
      sha256 "55be65b7a122d753ba85b9e725ffa0218080bb57b18254248a8591d912efa11f"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
