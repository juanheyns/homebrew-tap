class Osxcli < Formula
  homepage "https://github.com/juanheyns/osxcli"
  url "https://github.com/juanheyns/osxcli/archive/0.1.tar.gz"
  version "0.1"
  sha1 "e5173d3af494db13088c8da51855b3de31701f19"

  def install
    bin.install "screensaver"
    bin.install "itunescli"
    bin.install "finderhide"
  end
end
