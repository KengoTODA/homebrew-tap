class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.21.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.21.0/inspequte-inspequte-v0.21.0-arm64-apple-darwin.tar.gz'
      sha256 '986db853d255c41e3a5fe2b933b0db1503c6b9143b5bbc020df5861b0c93aaa5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.21.0/inspequte-inspequte-v0.21.0-amd64-apple-darwin.tar.gz'
      sha256 'e00bbd20ae2e69050c83292b08684900afebbee38c9def8a4446674b067436ed'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.21.0/inspequte-inspequte-v0.21.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 '42984023fd93f35cb574cfc932595f552fed335ca6904f79e47844018c38ad61'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.21.0/inspequte-inspequte-v0.21.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 '2ffe7efdfc8fc0b3368d0aa358908ff05d78f767d0a0d60fc9453fb0eda0de37'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
