class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.7/kennet_0.1.7_darwin-arm64.tar.gz"
      sha256 "11da77ae380af9014b4b2acd41ba280c089e7d2868f91cfc57387ac1721e508b"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.7/kennet_0.1.7_darwin-x86_64.tar.gz"
      sha256 "c2f799399a6527fe0d5a3eb3a7e88cdfb5468c18e474391d1821c637a2aa69bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.7/kennet_0.1.7_linux-arm64.tar.gz"
      sha256 "043b7e54ffa174e7c5bfad746747007bc24f487da5c4d96ac5f7bb1248484338"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.7/kennet_0.1.7_linux-x86_64.tar.gz"
      sha256 "1432835b3ef8d60b78db8b226af2ebc578cc53dbbef5508eed1589b1463d9756"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
