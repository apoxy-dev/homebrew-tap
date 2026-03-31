# This file is generated automatically by the Apoxy release pipeline.
# Do not edit manually — the source of truth is in the apoxy repo at ci/main.go.
class Apoxy < Formula
  desc "Apoxy CLI - cloud-native API proxy"
  homepage "https://apoxy.dev"
  version "0.18.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.18.1/apoxy_Darwin_arm64.tar.gz"
      sha256 "647de8b35b25e6a6e3e2db32f1656a19e2c5b76589eb1d9ff203b86086f4169d"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.18.1/apoxy_Darwin_x86_64.tar.gz"
      sha256 "85127ec87d1f42adeed850754e9fb4343a5bd702cce0a39b302572624697f7c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.18.1/apoxy_Linux_arm64.tar.gz"
      sha256 "eab9b8639f6c50d6c0bc555a145c21ceab5a73512a7f729dc1cc339630be7f12"
    else
      url "https://github.com/apoxy-dev/apoxy/releases/download/v0.18.1/apoxy_Linux_x86_64.tar.gz"
      sha256 "37c8825eba347aec22aa7aa0c6794a94e04860e989e14deb77871a5d91a1f97b"
    end
  end

  def install
    bin.install "apoxy"
  end

  test do
    system "#{bin}/apoxy", "version"
  end
end

