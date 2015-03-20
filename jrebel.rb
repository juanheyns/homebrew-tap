require 'formula'

class Jrebel < Formula
  homepage 'http://zeroturnaround.com/software/jrebel/'
  url 'https://dl.zeroturnaround.com/?token=f32d22dd4446d49574e03517f906da0eb5c0dc84'
  version '5.6.3a'
  sha1 '61f2ec9f2a5b1bd8a92c300f30b3685b99a956cf'

  def install
    prefix.install Dir['*']
  end
end

