class Metaphi < Formula
  desc "Command-line interface for Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.3/metaphi_0.1.3_darwin-arm64.tar.gz"
      sha256 "b213327679d8b2dc12685c2bd61f6c02af862414fd782e5e04ea0ffdcb4ca559"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.3/metaphi_0.1.3_darwin-x86_64.tar.gz"
      sha256 "713de324c96f329f45e1f5544dafb0b1c01e09070d2adeed99d6dd46123a3fce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.3/metaphi_0.1.3_linux-arm64.tar.gz"
      sha256 "d61bf063c639d5f4290adbfe086e410ba840a5e0e16f5b970d69e7aec9639464"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.3/metaphi_0.1.3_linux-x86_64.tar.gz"
      sha256 "607fc04f6a9726a4caffdc12e6e399f0bccbcf28c15c3a754bf89595886d79f8"
    end
  end

  def install
    bin.install "metaphi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metaphi --version")
  end
end
