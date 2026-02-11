class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.16.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.16.0/inspequte-inspequte-v0.16.0-arm64-apple-darwin.tar.gz'
      sha256 'a2c8988dbcd2946b2d04a6859bcd420b4e9e82b3a7a2df371f45d834367e57a2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.16.0/inspequte-inspequte-v0.16.0-amd64-apple-darwin.tar.gz'
      sha256 'f039026fbd6b92600477310fb847e1fef59497e03252c52cee14d9eb347a10a8'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.16.0/inspequte-inspequte-v0.16.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 '4338b9e4a7afa95fff8079b0cec84b64983b617d33684bde3bb786ad3e4b321e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.16.0/inspequte-inspequte-v0.16.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 'b619490e095606315c726abc245ad6a4dec9ded571c2557301aa22608dff8439'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
