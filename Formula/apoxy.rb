class Apoxy < Formula
  desc "Apoxy CLI - cloud-native API proxy"
  homepage "https://apoxy.dev"
  version "0.16.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.16.1/apoxy_Darwin_arm64.tar.gz"
      sha256 "ffc339e449fba07873fd57f26c1c9893142750775b415e074b917fac1b99da0b"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.16.1/apoxy_Darwin_x86_64.tar.gz"
      sha256 "b7a95b6dd735e89306ef797dd5ae256e7289edd62c41a618cfdffb5cc6f301f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.16.1/apoxy_Linux_arm64.tar.gz"
      sha256 "c3ae9b23adfe5f15985da461a6c280391546f6ca81902e9c11d5abec14200e57"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.16.1/apoxy_Linux_x86_64.tar.gz"
      sha256 "d3dd91e07f1633e51aeeb764d30b24e51008061daaa0ece9e20e8d54cfaac9ca"
    end
  end

  def install
    bin.install "apoxy"
  end

  test do
    system "#{bin}/apoxy", "version"
  end
end
