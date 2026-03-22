class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.27.1'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.1/inspequte-inspequte-v0.27.1-arm64-apple-darwin.tar.gz'
      sha256 'a645dd7f1e9bd19f719121c2c961d658d0d36b47cf8327d5ff7bfc1606f9752f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.1/inspequte-inspequte-v0.27.1-amd64-apple-darwin.tar.gz'
      sha256 '1848d646da866c81576828605364ddd4e7e4ed69080b9b8ac85247100b1f7769'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.1/inspequte-inspequte-v0.27.1-arm64-unknown-linux-gnu.tar.gz'
      sha256 '59d088acb202d1c8bd874bc1e8081faea53330b1524da04e6e2fcd50b8e7bf8b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.27.1/inspequte-inspequte-v0.27.1-amd64-unknown-linux-gnu.tar.gz'
      sha256 'c5495301961dd9782c46e792275a6ee8eefcb0aac2d7d64f57dbd9d8c430405f'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
