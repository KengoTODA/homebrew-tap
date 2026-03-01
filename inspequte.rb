class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.24.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.24.0/inspequte-inspequte-v0.24.0-arm64-apple-darwin.tar.gz'
      sha256 '6e68923b1ada0ef842e43d74b4da88a9bd3cbdfb21f10da13c633158680b2c6d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.24.0/inspequte-inspequte-v0.24.0-amd64-apple-darwin.tar.gz'
      sha256 'dd39f42d48e9da9730a1b71bef649b2c83b08decb04a76ffb468103fbe439257'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.24.0/inspequte-inspequte-v0.24.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 '1c2d6daf3c4d590c4c5f46673871121a266606a44b15a3f73eb5d57883d136f7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.24.0/inspequte-inspequte-v0.24.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 '48cac1eb857b03b253720517f576405581589119e3ef3e6cd732730af2369208'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
