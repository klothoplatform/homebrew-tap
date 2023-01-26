class
  Klotho < Formula
  desc ""
  homepage "https://klo.dev"
  license ""
  version "0.6.0"

  depends_on "pulumi"

  on_macos do
    on_arm do
      url "https://github.com/klothoplatform/klotho-pro/releases/download/v0.6.0/klotho_darwin_arm64"
      sha256 "a053e485b60c28cf06a7015b65f9c9a56abc28fd3cdb58fd702c02006f87886f"

      def install
        bin.install "klotho_darwin_arm64" => "klotho"
      end
    end
    on_intel do
      url "https://github.com/klothoplatform/klotho-pro/releases/download/v0.6.0/klotho_darwin_amd64"
      sha256 "1d958ace0ce6db75a32be25bcdbe88f84f2aab989a298e181e5e3494ee3c6a23"

      def install
        bin.install "klotho_darwin_amd64" => "klotho"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/klothoplatform/klotho-pro/releases/download/v0.6.0/klotho_linux_amd64"
      sha256 "0c7f40c77dc6943cae26074c501ba418d96413505b7756c669a612a99d44aebd"

      def install
        bin.install "klotho_linux_amd64" => "klotho"
      end
    end
  end

  test do
    system "klotho", "--version"
  end
end
