require 'formula'

class Eiio < Formula
  homepage 'https://github.com/nagadomi/eiio'
  url 'https://github.com/nagadomi/eiio/archive/v0.5.6.tar.gz'
  sha1 'c46cb98a8434a0856ec4ec5215dda05c6755cf75'

  head 'https://github.com/nagadomi/eiio.git'

  depends_on :autoconf
  depends_on :automake
  depends_on :libtool

  def install
    system 'sh autogen.sh'
    system './configure', '--disable-gif', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
