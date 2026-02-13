class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.17.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.17.0/inspequte-inspequte-v0.17.0-arm64-apple-darwin.tar.gz'
      sha256 'ef9711bf5c1be898ac8ac4d2a4103188671d6633ec4d94a442d074cf84014a4d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.17.0/inspequte-inspequte-v0.17.0-amd64-apple-darwin.tar.gz'
      sha256 'cb638863a5f23a9a0aae9e19505ee01f857bb15716301f3a901ccd034e01f24f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.17.0/inspequte-inspequte-v0.17.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 '3f4679df61f0351f225ac05ab672fc0284575d201ec9cb13a3086f804e42f956'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.17.0/inspequte-inspequte-v0.17.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 '0a7bf003d7a2d9aee45acf0706d888242fd775dd34c0aa3428bb2504dfec4c7f'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
