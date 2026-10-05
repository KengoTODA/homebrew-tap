class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '1.2.2'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.2/inspequte-inspequte-v1.2.2-arm64-apple-darwin.tar.gz'
      sha256 '7f51c0d765575e16b545879d31a109f4dfb504ae64530a4c96a542747f8bf0d8'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.2/inspequte-inspequte-v1.2.2-amd64-apple-darwin.tar.gz'
      sha256 '67f166dd697ca00be3d41dad420b0cb85c8643d7ccad8f27b18892d77e942056'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.2/inspequte-inspequte-v1.2.2-arm64-unknown-linux-gnu.tar.gz'
      sha256 '25c2caaf292bcf49de1cdc3c2a44bf68dc8a9afad1b6f53fffbcafa351c2a297'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.2/inspequte-inspequte-v1.2.2-amd64-unknown-linux-gnu.tar.gz'
      sha256 '44f188fa5e07789e99e45f86e6dd03497e2f5cf92d741cde5b6341f89837ec46'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
