class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.27.4'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.4/inspequte-inspequte-v0.27.4-arm64-apple-darwin.tar.gz'
      sha256 'fb27c806e1b76ed00f349a907d45d3e1eec3f83eadfebd6d234c12cf5fe11c46'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.4/inspequte-inspequte-v0.27.4-amd64-apple-darwin.tar.gz'
      sha256 '9ccd9c0e592034b04111a4e9ee08802e6f8721b6402a8e60e1f134748ad2183c'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.4/inspequte-inspequte-v0.27.4-arm64-unknown-linux-gnu.tar.gz'
      sha256 'e15f829d122e4dff89826edf14dbd9bfd3087c73a6811e62867be42dff29deba'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.4/inspequte-inspequte-v0.27.4-amd64-unknown-linux-gnu.tar.gz'
      sha256 '35ea6e20f0a54c7f69f2e36623505d45e0f07d7e2807a3907da5984c8104ccc3'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
