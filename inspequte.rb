class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '1.2.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.0/inspequte-inspequte-v1.2.0-arm64-apple-darwin.tar.gz'
      sha256 'daf2ff80642c3bc6001c6a756df6fb7699ace84f9eb88bd3b82981fc15fc6e98'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.0/inspequte-inspequte-v1.2.0-amd64-apple-darwin.tar.gz'
      sha256 'fcfe447ff2b7437ea6b1c832fdfe069b5fe69a7b9e4b2ab8a6cc492fc2ea1772'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.0/inspequte-inspequte-v1.2.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 'c006895276788892946bf010b7c3bab5a116f68c87125b5aa1cc9dbd30894250'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.2.0/inspequte-inspequte-v1.2.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 '5cf517ec940da95584cef98cae97bc7085606b9cb0f481d32b2bf74d78b37cef'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
