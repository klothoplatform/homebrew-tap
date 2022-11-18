class Klotho < Formula
  desc ""
  homepage "https://klo.dev"
  license ""
  version "0.5.16"

  depends_on "pulumi"

  on_macos do
    on_arm do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.16/klotho_darwin_arm64"
      sha256 "fb16ae0fecf10f6a9ca276a6b7a0023a048f2da3d89944b0c11d8ef855c38c43"

      def install
        bin.install "klotho_darwin_arm64" => "klotho"
      end
    end
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.16/klotho_darwin_amd64"
      sha256 "379fe4d0d3087caa70acc361803e1071293fb1194d252a3e3195b8faf239013d"

      def install
        bin.install "klotho_darwin_amd64" => "klotho"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.16/klotho_linux_amd64"
      sha256 "c297bed83c3c8432ddbac5496a2aaa93e7dd9d82e3620575ef11d68f74b0e8c7"

      def install
        bin.install "klotho_linux_amd64" => "klotho"
      end
    end
  end

  test do
    system "klotho", "--version"
  end
end
