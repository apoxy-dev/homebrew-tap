# This file is generated automatically by the Apoxy release pipeline.
# Do not edit manually — the source of truth is in the apoxy repo at ci/main.go.
class Apoxy < Formula
  desc "Apoxy CLI - cloud-native API proxy"
  homepage "https://apoxy.dev"
  version "0.19.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.3/apoxy_Darwin_arm64.tar.gz"
      sha256 "8f3383342d8037b535a2c092413829e4afb05356c371517588f0f9dfa6495a36"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.3/apoxy_Darwin_x86_64.tar.gz"
      sha256 "347574ee32ad001de97f53680e39c8260fb884d980f67354e0f2de279c2323fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.3/apoxy_Linux_arm64.tar.gz"
      sha256 "0a458f17842eeba0ed1be07e0245985569027d9fe8e56efca508363b123c0b07"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.3/apoxy_Linux_x86_64.tar.gz"
      sha256 "ceb04c946ae2ef02e6418c297c50ec72663f4d67ec57ab2e68e57e210b79e5fc"
    end
  end

  def install
    bin.install "apoxy"
  end

  test do
    system "#{bin}/apoxy", "version"
  end
end

