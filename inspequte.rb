class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.27.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.0/inspequte-inspequte-v0.27.0-arm64-apple-darwin.tar.gz'
      sha256 '454c385d7184a8974f42ade0fbeb3d96abf789ca66827d14e8710a1f56a7af57'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.0/inspequte-inspequte-v0.27.0-amd64-apple-darwin.tar.gz'
      sha256 '05722a27d067de8ccba3248cf5ff4e9a84502448fc96a4627406382bc27034cd'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.0/inspequte-inspequte-v0.27.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 'd207988b126409c779970c705aac8a391e1aaa2d832ac802a34b8a971d518b09'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.0/inspequte-inspequte-v0.27.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 'e088e3644949f9da45ab0e2106edfa8b45dc034c22d6f052b960f49eadec0355'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
