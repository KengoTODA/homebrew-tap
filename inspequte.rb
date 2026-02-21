class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.22.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.22.0/inspequte-inspequte-v0.22.0-arm64-apple-darwin.tar.gz'
      sha256 '5b52c0a7bbb6dcff925bbd34be682084c21462228763bf8595d3afaca694cd0b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.22.0/inspequte-inspequte-v0.22.0-amd64-apple-darwin.tar.gz'
      sha256 '87bcf8905f8b68c7cbe938ddc7dbb95ca0ed2e0b583499f56d618316dad926f1'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.22.0/inspequte-inspequte-v0.22.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 '648e0d7695a417cf8bd96a9d4f1fabde44e90ae9e61cf4eb81c67af32842ffdd'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.22.0/inspequte-inspequte-v0.22.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 '694c7fd4ed0f071ea2fb84e5dc22bb6759f249978dc6c83aa97e2513d3048649'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
