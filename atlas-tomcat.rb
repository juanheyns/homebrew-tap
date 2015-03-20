require 'formula'

class AtlasTomcat < Formula
  homepage "http://tomcat.apache.org/"
  url "http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.35/bin/apache-tomcat-7.0.35.tar.gz"
  sha1 "62a50fcd4c4144971003d3d2688129ae33cce3e6"

  option "with-fulldocs", "Install full documentation locally"

  resource "fulldocs" do
    url "http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.35/bin/apache-tomcat-7.0.35-fulldocs.tar.gz"
    version "7.0.35"
    sha1 "a9241d9a99f84f0bed6f81fbd2682f7a977e0745"
  end

  # Keep log folders
  skip_clean 'libexec'

  def install
    # Remove Windows scripts
    rm_rf Dir['bin/*.bat']

    # Install files
    prefix.install %w{ NOTICE LICENSE RELEASE-NOTES RUNNING.txt }
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/catalina.sh" => "catalina"

    (share/'fulldocs').install resource('fulldocs') if build.with? 'fulldocs'
  end
end

