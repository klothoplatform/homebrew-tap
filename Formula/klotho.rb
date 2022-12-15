class Klotho < Formula
  desc ""
  homepage "https://klo.dev"
  license ""
  version "0.5.18"

  depends_on "pulumi"

  on_macos do
    on_arm do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.18/klotho_darwin_arm64"
      sha256 "b58ad75fdf0089c193490ec849ed855053b2014287c19fbe8a6a627195ef8cbc"

      def install
        bin.install "klotho_darwin_arm64" => "klotho"
      end
    end
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.18/klotho_darwin_amd64"
      sha256 "445393e8a989102b10831eb589898899cd3996daa3ddc5e88fb59ccb741ebf6b"

      def install
        bin.install "klotho_darwin_amd64" => "klotho"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.18/klotho_linux_amd64"
      sha256 "97417a48f98296b6fcdc7c6498869c6ff5bbfa81b416348dbb0859add9f8f64a"

      def install
        bin.install "klotho_linux_amd64" => "klotho"
      end
    end
  end

  test do
    system "klotho", "--version"
  end
end
