require 'formula'

class Etsviewer < Formula
  homepage 'http://www.enthuware.com/'
  url 'http://enthuware.com/etsviewer/etsviewer.jar', :using => :nounzip
  version '3.56'
  sha1 'f68ae0c58e86abb1351a0f8abcbc9766450b14f3'

  def install
    prefix.install "etsviewer.jar"
  end
end

