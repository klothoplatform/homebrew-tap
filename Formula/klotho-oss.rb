class
  KlothoOss < Formula
  desc ""
  homepage "https://klo.dev"
  license "Apache 2.0"
  version "0.6.1"

  depends_on "pulumi"

  on_macos do
    on_arm do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.1/klotho_darwin_arm64"
      sha256 "1a7cd92afb85dd5320418302026f904e73ed3bf415c1fc5d58da69cc8f96abb6"

      def install
        bin.install "klotho_darwin_arm64" => "klotho"
      end
    end
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.1/klotho_darwin_amd64"
      sha256 "309fa575943cb4871dfdcf21866210ea915b5cad52e42d73da449126767da0d9"

      def install
        bin.install "klotho_darwin_amd64" => "klotho"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.1/klotho_linux_amd64"
      sha256 "7bae53b3acc3704936959c18fd838b640ff65b2ce1dec67669cf32e054457338"

      def install
        bin.install "klotho_linux_amd64" => "klotho"
      end
    end
  end

  test do
    system "klotho", "--version"
  end
end
