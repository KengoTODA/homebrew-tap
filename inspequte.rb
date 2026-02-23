class Inspequte < Formula
  desc 'Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents.'
  homepage 'https://github.com/KengoTODA/inspequte'
  version '0.23.0'
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.23.0/inspequte-inspequte-v0.23.0-arm64-apple-darwin.tar.gz'
      sha256 '5b874612f13775fdd46e410abf48da5b72fdeff3ce7109e9bcd10c3c0afc08a4'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.23.0/inspequte-inspequte-v0.23.0-amd64-apple-darwin.tar.gz'
      sha256 'cbe415e9b8b235a57ea5b9cec7783a0e77542f01b3b532594756906621556aba'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.23.0/inspequte-inspequte-v0.23.0-arm64-unknown-linux-gnu.tar.gz'
      sha256 '62a5a186147a0e916f440b6b4241b61744ce3a8a71bc1679c5041b27aa9a306b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.23.0/inspequte-inspequte-v0.23.0-amd64-unknown-linux-gnu.tar.gz'
      sha256 '9e4963515c630a318fcea4ccdf93ddaa12edbba60acae4a83e7c754d490b292f'
    end
  end
 
  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
