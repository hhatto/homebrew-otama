require 'formula'

class Otama < Formula
  homepage 'https://github.com/nagadomi/otama'
  url 'https://github.com/nagadomi/otama/archive/v0.7.2.tar.gz'
  sha1 '2da554957964c2c64dfd0e46e85c06c593577717'

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
