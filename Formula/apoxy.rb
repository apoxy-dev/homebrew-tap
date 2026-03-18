class Apoxy < Formula
  desc "Apoxy CLI - cloud-native API proxy"
  homepage "https://apoxy.dev"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.0.0/apoxy_Darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.0.0/apoxy_Darwin_x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.0.0/apoxy_Linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.0.0/apoxy_Linux_x86_64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "apoxy"
  end

  test do
    system "#{bin}/apoxy", "--version"
  end
end
