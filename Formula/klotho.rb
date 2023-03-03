require "download_strategy"

class KlothoDownloadStrategy < CurlDownloadStrategy
  def initialize(url, name, version, **meta)
    super
  end

  def parse_basename(url, search_query: true)
    # automatically rename the downloaded binary to klotho since the server doesn't provide a filename
    "klotho"
  end
end
class
  Klotho < Formula
  desc ""
  homepage "https://klo.dev"
  license ""
  version "0.6.4"

  depends_on "pulumi"

  def install
    bin.install "klotho"
  end

  on_macos do
    on_arm do
      url "http://srv.klo.dev/update/latest/darwin/arm64?stream=pro:v0.6.4", :using => KlothoDownloadStrategy
      sha256 "50a3648477154fe7da38c1b5e8820514d4667f6b0050198ae652789b48df0ad6"
    end
    on_intel do
      url "http://srv.klo.dev/update/latest/darwin/x86_64?stream=pro:v0.6.4", :using => KlothoDownloadStrategy
      sha256 "d35fa9f4dd81a584f9562d174677c8eaef1dcc0de2d5f45e311c95ede66338d7"
    end
  end

  on_linux do
    on_intel do
      url "http://srv.klo.dev/update/latest/linux/x86_64?stream=pro:v0.6.4", :using => KlothoDownloadStrategy
      sha256 "fc85cad925d17be9868fe0b00c82112ca5904347eb3bf1d60cd915d98c62088f"
    end
  end

  test do
    system "klotho", "--version"
  end
end
