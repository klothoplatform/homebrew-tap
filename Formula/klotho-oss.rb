class
  KlothoOss < Formula
  desc ""
  homepage "https://klo.dev"
  license "Apache 2.0"
  version "0.6.4"

  depends_on "pulumi"

  on_macos do
    on_arm do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.4/klotho_darwin_arm64"
      sha256 "1c61b17e7b690cb94d5cd30941c0844381d6122d29400823a33d6289ad9d1f70"

      def install
        bin.install "klotho_darwin_arm64" => "klotho"
      end
    end
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.4/klotho_darwin_amd64"
      sha256 "8c6e02ee0e4219efaf0ef2b17deef17ed09383a89f26388ea6d3a5200f214601"

      def install
        bin.install "klotho_darwin_amd64" => "klotho"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.4/klotho_linux_amd64"
      sha256 "e681dc7c5f8b0c0d1ba4f2f1f580e362f764525550b3f32395ca2ba8f0fbd0c9"

      def install
        bin.install "klotho_linux_amd64" => "klotho"
      end
    end
  end

  test do
    system "klotho", "--version"
  end
end
