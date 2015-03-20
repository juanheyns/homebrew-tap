require 'formula'

class JRebel < Formula
  homepage 'http://zeroturnaround.com/software/jrebel/'
  url 'https://dl.zeroturnaround.com/?token=f32d22dd4446d49574e03517f906da0eb5c0dc84'
  version '5.6.3a'
  sha1 'e024b6ffe9fdebb424693d7fd76e3aa4575be3db'

  def install
    prefix.install Dir['*']
  end
end

