class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '1.0.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.0.0/inspequte-inspequte-v1.0.0-arm64-apple-darwin.tar.gz'
      sha256 'c68e8b9b49d29d9f89db16f772ca14ab36156b66d0344585117e06a01efd5187'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.0.0/inspequte-inspequte-v1.0.0-amd64-apple-darwin.tar.gz'
      sha256 '7e6cc8ff626aba199124fac97e96b2d097d0dc2a03a71ff458ce963f6773ca1d'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.0.0/inspequte-inspequte-v1.0.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 'a512401ae61f17fc93de7f3484ffb2b61c717db255a74037924653e298c05baf'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.0.0/inspequte-inspequte-v1.0.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 '6effd86ff6b88e32924c1ec9b0b00b33f881e27da8659ec23ab2afa7655bc8d3'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
