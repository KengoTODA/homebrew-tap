class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.26.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.26.0/inspequte-inspequte-v0.26.0-arm64-apple-darwin.tar.gz'
      sha256 'feeed7aeb2be5f5be662074f8e3ecfd74912ca4b8a86450d480039a9f4b9dd2f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.26.0/inspequte-inspequte-v0.26.0-amd64-apple-darwin.tar.gz'
      sha256 '05bfdcc13e3bdfa42adf57de02d6330166d9d4fc418e55cdae664185c8fb59a4'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.26.0/inspequte-inspequte-v0.26.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 'c322a33fc2129ec58cbf31d97cc883d6a09d603351274e96a5ae133bc79e00ae'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.26.0/inspequte-inspequte-v0.26.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 'b4fc78ec1e46e0a9d5615e2bf924d2f7787af3270175fe99a41bb65a4535580c'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
