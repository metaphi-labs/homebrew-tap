class Kennet < Formula
  desc "Command-line interface for Kennet, the RL infrastructure of Metaphi AI"
  homepage "https://docs.metaphi.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.21/kennet_0.1.21_darwin-arm64.tar.gz"
      sha256 "b1fe82549f2ac117166c3ab00100c51ff98af358a43e82dc899f8cb8111981b8"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.21/kennet_0.1.21_darwin-x86_64.tar.gz"
      sha256 "e87011b7a087c534dd5ba928f2a0b8960168a618590ff6119957c6f976612872"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.21/kennet_0.1.21_linux-arm64.tar.gz"
      sha256 "d1471fc54c9e348aae29ff0fe7b037d4131e9f7b99f5f28e5cbf689c0e443b2e"
    end
    on_intel do
      url "https://github.com/metaphi-labs/metaphi-ai-cli/releases/download/v0.1.21/kennet_0.1.21_linux-x86_64.tar.gz"
      sha256 "e779331db56cec7c94a1d04e7e6e71e71d599e23eb1742d89e352ff0982907d4"
    end
  end

  def install
    bin.install "kennet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kennet --version")
  end
end
