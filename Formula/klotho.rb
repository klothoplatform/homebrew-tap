class Klotho < Formula
  desc ""
  homepage "https://klo.dev"
  license ""
  version "0.5.17"

  depends_on "pulumi"

  on_macos do
    on_arm do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.17/klotho_darwin_arm64"
      sha256 "38b0c2ecf83968db8c93b7401abd1de20d7c1147703c99339136d18a452e8419"

      def install
        bin.install "klotho_darwin_arm64" => "klotho"
      end
    end
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.17/klotho_darwin_amd64"
      sha256 "1a0b1a72b3911871cda45557f8fb30f16af9dab267499e53f7629ab7d2bd1a36"

      def install
        bin.install "klotho_darwin_amd64" => "klotho"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.17/klotho_linux_amd64"
      sha256 "f59cc7fae02310ce7b109fdefb0aa31b40b01fb98795d181419753789bad7379"

      def install
        bin.install "klotho_linux_amd64" => "klotho"
      end
    end
  end

  test do
    system "klotho", "--version"
  end
end
