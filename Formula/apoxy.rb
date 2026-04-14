# This file is generated automatically by the Apoxy release pipeline.
# Do not edit manually — the source of truth is in the apoxy repo at ci/main.go.
class Apoxy < Formula
  desc "Apoxy CLI - cloud-native API proxy"
  homepage "https://apoxy.dev"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.0/apoxy_Darwin_arm64.tar.gz"
      sha256 "282c42460ca3ae2656451685144e6b22306ef1ecaa592ab321563f753d946129"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.0/apoxy_Darwin_x86_64.tar.gz"
      sha256 "d287ad4952f818bed9ac9cc7ee8fa9e52c0513b932f7bfce672e6a0faa80aac2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.0/apoxy_Linux_arm64.tar.gz"
      sha256 "1f3622733694ae680883a95c6968180e6b4ea258dec290a4fe2ab3b854fd45d0"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.19.0/apoxy_Linux_x86_64.tar.gz"
      sha256 "7b191bde1994b87a1f4afbad404acd7430d5739193a2e7643914c330c940bf19"
    end
  end

  def install
    bin.install "apoxy"
  end

  test do
    system "#{bin}/apoxy", "version"
  end
end

