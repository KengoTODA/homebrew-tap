class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '1.2.1'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.1/inspequte-inspequte-v1.2.1-arm64-apple-darwin.tar.gz'
      sha256 'e9aaac43e223a13ca78c79d4827f94c175408a22c4842f13ab63dd01936414ac'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.1/inspequte-inspequte-v1.2.1-amd64-apple-darwin.tar.gz'
      sha256 '5fcfda2cf11c5cd2427a59cd21ad4c8367552b1fcc2e353b5c9459b4e3329ed7'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.1/inspequte-inspequte-v1.2.1-arm64-unknown-linux-gnu.tar.gz'
      sha256 'e8efbf2a0d6687c957a6f6edd6a6190ac3c534a49141e65fe2ddc4aa424f0abc'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.1/inspequte-inspequte-v1.2.1-amd64-unknown-linux-gnu.tar.gz'
      sha256 'a33c984f2a97a97d6fa6d078a1c421bae9c60fcb1364147653b96ccf0159cd14'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
