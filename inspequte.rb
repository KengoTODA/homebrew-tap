class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '1.1.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.1.0/inspequte-inspequte-v1.1.0-arm64-apple-darwin.tar.gz'
      sha256 'adb54aed765f940e0b9635419c5f834f071e6f1d8e0241fbd4dad92142c77e8e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.1.0/inspequte-inspequte-v1.1.0-amd64-apple-darwin.tar.gz'
      sha256 'a7d66f68218aa77bd8a9e5000acadd47814f4d5980c91ee803de8179f3f83299'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.1.0/inspequte-inspequte-v1.1.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 '051d3433b8be0c20d99f0989399e6cfc8dc1e26679d8be38881d9a1e23cdf5ed'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v1.1.0/inspequte-inspequte-v1.1.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 '0df19042cfcaf1e59f381dd297ee9f47daf8e1b75401df86aa6679b96d274c15'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
