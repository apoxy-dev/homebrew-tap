# This file is generated automatically by the Apoxy release pipeline.
# Do not edit manually — the source of truth is in the apoxy repo at ci/main.go.
class Apoxy < Formula
  desc "Apoxy CLI - cloud-native API proxy"
  homepage "https://apoxy.dev"
  version "0.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.20.0/apoxy_Darwin_arm64.tar.gz"
      sha256 "b916448f295bee07d6837fda639a2a99873088641702f77d36abbc84192af35e"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.20.0/apoxy_Darwin_x86_64.tar.gz"
      sha256 "554dd45c624b1d73c28233d495ebfe5d8689e7eebea791204092d638b63280c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.20.0/apoxy_Linux_arm64.tar.gz"
      sha256 "0d406598edb13807b0d06a3948c717e3aa1e5e0a409ad42855160540e548a6a4"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.20.0/apoxy_Linux_x86_64.tar.gz"
      sha256 "916167e7f09d6566295fbb63afa4cd2c41ca9fc3d9c053dfa0850e41b66003c3"
    end
  end

  def install
    bin.install "apoxy"
  end

  test do
    system "#{bin}/apoxy", "version"
  end
end

