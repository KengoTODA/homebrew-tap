class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.27.2'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.2/inspequte-inspequte-v0.27.2-arm64-apple-darwin.tar.gz'
      sha256 'f99572d6756acf61c256132fa9a5bf0ce8f9db6245429e4dc56d0723074f701d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.2/inspequte-inspequte-v0.27.2-amd64-apple-darwin.tar.gz'
      sha256 '9d2ffcbec81016a63ac680c02265f1d3a02a20012edeba272e0308de8d0977fb'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.2/inspequte-inspequte-v0.27.2-arm64-unknown-linux-gnu.tar.gz'
      sha256 '331368d3248df89f742e040b842edb598a854507bbdb7250ca73d91019758a47'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.2/inspequte-inspequte-v0.27.2-amd64-unknown-linux-gnu.tar.gz'
      sha256 'd68000bdf29d1b376fd4aa62f49f8c0f7fae00b90f45babfe88ce5a1ab32b184'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
