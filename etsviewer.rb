require 'formula'

class Etsviewer < Formula
  homepage 'http://www.enthuware.com/'
  url 'http://enthuware.com/etsviewer/etsviewer.jar', :using => :nounzip
  version '3.56'
  md5 '62840e1a26d3d01c7e1f5af941f39cff'

  def install
    prefix.install "etsviewer.jar"
  end
end

