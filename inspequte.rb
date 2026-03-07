class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.25.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.25.0/inspequte-inspequte-v0.25.0-arm64-apple-darwin.tar.gz'
      sha256 'a21397f8299393b63debc416fa1311a7b032be19ebb7cbb35f76edc87b9b12c2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.25.0/inspequte-inspequte-v0.25.0-amd64-apple-darwin.tar.gz'
      sha256 '4a6f09545b055bd6863910bfc99ebc7ccf8d549bbce11dc0b1ef8d0d6aafbd09'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.25.0/inspequte-inspequte-v0.25.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 '6d41553df7bfa03b54a243fbc7f07e2e1be84b739c2726a581ab61363e9b5cea'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.25.0/inspequte-inspequte-v0.25.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 '76b3ab5de5ed01e9d4b4e6f312c52d248dc198d61344b32f68701caa04f6d16a'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
