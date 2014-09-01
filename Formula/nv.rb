require 'formula'

class Nv < Formula
  homepage 'https://github.com/nagadomi/nv'
  url 'https://github.com/nagadomi/nv/archive/v2.2.0.tar.gz'
  sha1 'cd8746671cfa95d29ff61a4ea1ec8122375c939a'

  head 'https://github.com/nagadomi/nv.git'

  depends_on :autoconf
  depends_on :automake
  depends_on :libtool
  depends_on 'eiio'

  def install
    system 'sh autogen.sh'
    system './configure', '--disable-openmp', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
