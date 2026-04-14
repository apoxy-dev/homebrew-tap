# This file is generated automatically by the Apoxy release pipeline.
# Do not edit manually — the source of truth is in the apoxy repo at ci/main.go.
class Apoxy < Formula
  desc "Apoxy CLI - cloud-native API proxy"
  homepage "https://apoxy.dev"
  version "0.19.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.2/apoxy_Darwin_arm64.tar.gz"
      sha256 "20e96e152d25662c60c76a9b699485ca03bd10e89b2a1cd0d60922f09f97e040"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.2/apoxy_Darwin_x86_64.tar.gz"
      sha256 "64b184de19b81c446150ef72894d1f7a2a3fb5c815469182e1950cce541839f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.2/apoxy_Linux_arm64.tar.gz"
      sha256 "b871fa159de59b375e6c441daadf080713bdaaebd4cef64d62e4337e94f18f9b"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.2/apoxy_Linux_x86_64.tar.gz"
      sha256 "6102354d946d315f3191125d6418d614b558501fb3c38d89d614e56900345330"
    end
  end

  def install
    bin.install "apoxy"
  end

  test do
    system "#{bin}/apoxy", "version"
  end
end

