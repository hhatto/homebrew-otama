require 'formula'

class Eiio < Formula
  homepage 'https://github.com/nagadomi/eiio'
  url 'https://github.com/nagadomi/eiio/archive/v0.5.6.tar.gz'
  sha256 'df5d8c9b85584bc97b8647665b2d2df74a4f20689c8641ee8a1e12e5f465d680'

  head 'https://github.com/nagadomi/eiio.git'

  depends_on 'autoconf'
  depends_on 'automake'
  depends_on 'libtool'

  def install
    system 'sh autogen.sh'
    system './configure', '--disable-gif', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
