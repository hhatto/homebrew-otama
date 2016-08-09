require 'formula'

class Nv < Formula
  homepage 'https://github.com/nagadomi/nv'
  url 'https://github.com/nagadomi/nv/archive/v2.2.0.tar.gz'
  sha256 '45e9a9ced7c4bb25766ab65bad8edd5b0e6c18fe0746a33fc8321e7496fe58d4'

  head 'https://github.com/nagadomi/nv.git'

  depends_on 'autoconf'
  depends_on 'automake'
  depends_on 'libtool'
  depends_on 'eiio'

  def install
    system 'sh autogen.sh'
    system './configure', '--disable-openssl', '--disable-openmp', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
