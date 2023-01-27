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
  version "0.6.1"

  depends_on "pulumi"

  def install
    bin.install "klotho"
  end

  on_macos do
    on_arm do
      url "http://srv.klo.dev/update/latest/darwin/arm64?stream=pro:v0.6.1", :using => KlothoDownloadStrategy
      sha256 "78c3fcdc4137a27e3e6bdad4cb43a7f2a6c7a9513236a3108f28b43e7c195ac0"
    end
    on_intel do
      url "http://srv.klo.dev/update/latest/darwin/x86_64?stream=pro:v0.6.1", :using => KlothoDownloadStrategy
      sha256 "a1cc8d562b136a0aadbc0f0e8f12d01a7e0fc6b8f30c3f3320355565c124524f"
    end
  end

  on_linux do
    on_intel do
      url "http://srv.klo.dev/update/latest/linux/x86_64?stream=pro:v0.6.1", :using => KlothoDownloadStrategy
      sha256 "c1ab570e98d49c0be7b31f8c6f5ab629d923512e74e7ac668636de99ebab05c6"
    end
  end

  test do
    system "klotho", "--version"
  end
end
