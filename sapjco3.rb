require 'formula'

class ExtractLocalArchive < CurlDownloadStrategy 
  def _fetch
    cp @url, temporary_path
  end  
end

class Sapjco3 < Formula
  homepage 'http://help.sap.com/saphelp_nwpi711/helpdata/en/48/70792c872c1b5ae10000000a42189c/content.htm'
  url ENV['ARCHIVE_PATH'], :using => ExtractLocalArchive
  version '3.0.11'
  sha1 '9d28d9a735e290d4869cf91dc02297bd99350c90'

  def install
    prefix.install Dir['*']
  end
end

