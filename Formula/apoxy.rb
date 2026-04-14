# This file is generated automatically by the Apoxy release pipeline.
# Do not edit manually — the source of truth is in the apoxy repo at ci/main.go.
class Apoxy < Formula
  desc "Apoxy CLI - cloud-native API proxy"
  homepage "https://apoxy.dev"
  version "0.19.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.1/apoxy_Darwin_arm64.tar.gz"
      sha256 "659d7f834de672a934b005da110704ace622a088e1ad4e2a04a5d033013910d2"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.1/apoxy_Darwin_x86_64.tar.gz"
      sha256 "79124534589b64b9bd3d9c2d948ac7e3d7b45cfbdcbf5103a785749936b5feca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.1/apoxy_Linux_arm64.tar.gz"
      sha256 "bbb705b85cebea10d1134879024bfe9aca03358b5bbf2e0ff653376470ea8227"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.1/apoxy_Linux_x86_64.tar.gz"
      sha256 "90dbd9312d096063d0fb3bfb5a4b144d5359279b095a0335a5f8b03ade6b387c"
    end
  end

  def install
    bin.install "apoxy"
  end

  test do
    system "#{bin}/apoxy", "version"
  end
end

