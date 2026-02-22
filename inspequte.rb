class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.22.1'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.22.1/inspequte-inspequte-v0.22.1-arm64-apple-darwin.tar.gz'
      sha256 '8d03d5d5d1b45c76bafeff2fe3bac7a91e9607eaec33b04e86c1c77614e217c0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.22.1/inspequte-inspequte-v0.22.1-amd64-apple-darwin.tar.gz'
      sha256 '083a2215bfeb3353bf7ff0cb4ae2f3e0bfab369e6367d2388d0c1453d7aafcaa'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.22.1/inspequte-inspequte-v0.22.1-arm64-unknown-linux-gnu.tar.gz'
      sha256 '2177a1736f346022362cae3099006f2257fda50d5aada6fb9bbbb49759b62634'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.22.1/inspequte-inspequte-v0.22.1-amd64-unknown-linux-gnu.tar.gz'
      sha256 '63c13ecef047cca9130e3c9c4df8a3fd365ea0fb96552b5b251ee5fc1d070624'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
