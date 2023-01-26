class
  KlothoOSS < Formula
  desc ""
  homepage "https://klo.dev"
  license ""
  version "0.6.0"

  depends_on "pulumi"

  on_macos do
    on_arm do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.0/klotho_darwin_arm64"
      sha256 "4337dc13527c518e7a487d85b6dba0c1c98114aa3d1652f7a4cddb27c815dd74"

      def install
        bin.install "klotho_darwin_arm64" => "klotho"
      end
    end
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.0/klotho_darwin_amd64"
      sha256 "d71a36de192adea27ede75507bc26f84422f4edab049b8f1d7d3a2e5ac6aeae4"

      def install
        bin.install "klotho_darwin_amd64" => "klotho"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.0/klotho_linux_amd64"
      sha256 "470a358e015b2f9d19643052f83a8aad76adde9b3b3fd04cdd76d7612ddf8520"

      def install
        bin.install "klotho_linux_amd64" => "klotho"
      end
    end
  end

  test do
    system "klotho", "--version"
  end
end
