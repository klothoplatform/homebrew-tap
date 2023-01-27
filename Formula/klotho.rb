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
  version "0.6.0"

  depends_on "pulumi"

  def install
    bin.install "klotho"
  end

  on_macos do
    on_arm do
      url "http://srv.klo.dev/update/latest/darwin/arm64?stream=pro:v0.6.0", :using => KlothoDownloadStrategy
      sha256 "a053e485b60c28cf06a7015b65f9c9a56abc28fd3cdb58fd702c02006f87886f"
    end
    on_intel do
      url "http://srv.klo.dev/update/latest/darwin/x86_64?stream=pro:v0.6.0", :using => KlothoDownloadStrategy
      sha256 "1d958ace0ce6db75a32be25bcdbe88f84f2aab989a298e181e5e3494ee3c6a23"
    end
  end

  on_linux do
    on_intel do
      url "http://srv.klo.dev/update/latest/linux/x86_64?stream=pro:v0.6.0", :using => KlothoDownloadStrategy
      sha256 "0c7f40c77dc6943cae26074c501ba418d96413505b7756c669a612a99d44aebd"
    end
  end

  test do
    system "klotho", "--version"
  end
end
