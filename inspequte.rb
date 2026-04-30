class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.27.3'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.3/inspequte-inspequte-v0.27.3-arm64-apple-darwin.tar.gz'
      sha256 '885ff4856cbcc8ac1752a15347e9b60a98bd0868e583ed2847862761cf44a985'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.3/inspequte-inspequte-v0.27.3-amd64-apple-darwin.tar.gz'
      sha256 '1a7c1636a349e0410d25efb00840ed5da67df91b2e1a28e37670b7a45631380c'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.3/inspequte-inspequte-v0.27.3-arm64-unknown-linux-gnu.tar.gz'
      sha256 '785458fd11f2e918e12989381df5c9e9ea46b88e907efbeda1ace53d771b3d2a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.3/inspequte-inspequte-v0.27.3-amd64-unknown-linux-gnu.tar.gz'
      sha256 '556c55b0acf2646292bbfc3a488db994843df347db14217dd944fa1b199d9896'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
