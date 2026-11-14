class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.53/kennet_0.1.53_darwin-arm64.tar.gz"
      sha256 "f98fcd07617388671d5f8013fa3452a6b4c4b89afdaf9bbe482c5f94cd709026"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.53/kennet_0.1.53_darwin-x86_64.tar.gz"
      sha256 "0cab06b6b705b154feee770cef6edff02ab7268eab1fba000dc1b6fe0b746601"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.53/kennet_0.1.53_linux-arm64.tar.gz"
      sha256 "80fcb6e67f938b73928dadf07d16be684e49e5da828033709e0b4f1730c6908b"
    end
    on_intel do
      url "https://github.com/metaphi-labs/kennet-cli/releases/download/v0.1.53/kennet_0.1.53_linux-x86_64.tar.gz"
      sha256 "e41a312c26729e64e210d9c601d494076338277daf2853099a95f45189cb26f7"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
