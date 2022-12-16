class Klotho < Formula
  desc ""
  homepage "https://klo.dev"
  license ""
  version "0.5.19"

  depends_on "pulumi"

  on_macos do
    on_arm do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.19/klotho_darwin_arm64"
      sha256 "b0ceda01a64b1c1ce2bcef40c990cc18d7ae88c660e1326d672edf2b7ed90f45"

      def install
        bin.install "klotho_darwin_arm64" => "klotho"
      end
    end
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.19/klotho_darwin_amd64"
      sha256 "6ba264dba45cee852832866c5d7f3e98496beeb3e172de15db5f18f6d616d1ac"

      def install
        bin.install "klotho_darwin_amd64" => "klotho"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.5.19/klotho_linux_amd64"
      sha256 "d020f380db48ee799400be9dd49b8c6c1d7d79885421cafdb3632945a422cab0"

      def install
        bin.install "klotho_linux_amd64" => "klotho"
      end
    end
  end

  test do
    system "klotho", "--version"
  end
end
