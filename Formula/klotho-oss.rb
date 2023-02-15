class
  KlothoOss < Formula
  desc ""
  homepage "https://klo.dev"
  license "Apache 2.0"
  version "0.6.2"

  depends_on "pulumi"

  on_macos do
    on_arm do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.2/klotho_darwin_arm64"
      sha256 "bed4aab6fa490d0f8fd99bb85fc46f76e1fa340a651c8efafe122136b992e8d9"

      def install
        bin.install "klotho_darwin_arm64" => "klotho"
      end
    end
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.2/klotho_darwin_amd64"
      sha256 "1b31f19206c29b2e32fd7c3af59bb5a994a66f11daa8b78ac311cbe271be5084"

      def install
        bin.install "klotho_darwin_amd64" => "klotho"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/klothoplatform/klotho/releases/download/v0.6.2/klotho_linux_amd64"
      sha256 "54b270b41ec0d8cc6efe75bf87041d9956695c27302aaade6a39c27fcb01822f"

      def install
        bin.install "klotho_linux_amd64" => "klotho"
      end
    end
  end

  test do
    system "klotho", "--version"
  end
end
