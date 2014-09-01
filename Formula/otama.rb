require 'formula'

class Otama < Formula
  homepage 'https://github.com/nagadomi/otama'
  url 'https://github.com/nagadomi/otama/archive/v0.7.3.tar.gz'
  sha1 '92975cc623732963b0248d66bfe957d3895ae090'

  head 'https://github.com/nagadomi/otama.git'

  depends_on :autoconf
  depends_on :automake
  depends_on :libtool
  depends_on 'nv'
  depends_on 'leveldb'

  def install
    system 'sh autogen.sh'
    system './configure', '--disable-openmp', '--without-ruby', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
