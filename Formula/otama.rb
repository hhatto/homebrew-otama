require 'formula'

class Otama < Formula
  homepage 'https://github.com/nagadomi/otama'
  url 'https://github.com/nagadomi/otama/archive/v0.7.5.tar.gz'
  sha1 'fe4e896d8ec32242c386961e7787fb364271702c'

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
