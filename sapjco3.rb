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
  md5 '49a3cc40203f0e5b94f1d24bc3d50cb6'

  def install
    prefix.install Dir['*']
  end
end

