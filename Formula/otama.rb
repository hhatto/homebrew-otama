require 'formula'

class Otama < Formula
  homepage 'https://github.com/nagadomi/otama'
  url 'https://github.com/nagadomi/otama/archive/v0.7.2.tar.gz'
  sha1 '9a4d169b8976231360e88a0ce06b1559899ed83c'

  head 'https://github.com/nagadomi/otama.git'

  depends_on :autoconf
  depends_on :automake
  depends_on :libtool
  depends_on 'nv'
  depends_on 'leveldb'

  def install
    system 'sh autogen.sh'
    system './configure', '--disable-openmp', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
