class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.15.1'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.15.1/inspequte-inspequte-v0.15.1-arm64-apple-darwin.tar.gz'
      sha256 'ddb2ae1a5d7b28a3ca2f3a256cd0ba6166b9057e7e5053072c0b187eb6f467c4'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.15.1/inspequte-inspequte-v0.15.1-amd64-apple-darwin.tar.gz'
      sha256 '88942391f2b1b060384eb92a0c2098cdc27aa926a816eab19830ae4f7650f82c'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.15.1/inspequte-inspequte-v0.15.1-arm64-unknown-linux-gnu.tar.gz'
      sha256 'f73cbd14f5094bbc214fdf99eddfb16cb965f6d6eb915928825df7627799dcae'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.15.1/inspequte-inspequte-v0.15.1-amd64-unknown-linux-gnu.tar.gz'
      sha256 '4c1365427660a5d294f4bc13504b7d71c3feb89afe8f10669652e5b84b0c1877'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
