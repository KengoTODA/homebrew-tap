class Inspequte < Formula
  desc "Fast, CLI-first static analysis tool for JVM class and JAR files. Designed for coding agents."
  homepage "https://github.com/KengoTODA/inspequte"
  version "0.14.0"
  license "AGPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/KengoTODA/inspequte/releases/download/inspequte-v0.14.0/inspequte-inspequte-v0.14.0-aarch64-apple-darwin.tar.gz"
    sha256 "c2f6ba9addfd0b532dba01cee8f164c5350c67b22c41e42b747a62c3ac2b6c76"
  end

  def install
    bin.install "inspequte"
  end

  test do
    system "#{bin}/inspequte", "--version"
  end
end
