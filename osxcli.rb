class Osxcli < Formula
  homepage "https://github.com/juanheyns/osxcli"
  url "https://github.com/juanheyns/osxcli/archive/0.1.tar.gz"
  sha1 "31be2c18fe254a7cee2f5774321c68f7e94def40"

  def install
    bin.install "screensaver"
    bin.install "itunescli"
    bin.install "finderhide"
  end
end
