require 'formula'

class Nv < Formula
  homepage 'https://github.com/nagadomi/nv'
  url 'https://github.com/nagadomi/nv/archive/v2.1.4.tar.gz'
  sha1 'cd3d1cfebccf7b62ec220644cfe06cb14edc1d0b'

  head 'https://github.com/nagadomi/nv.git'

  depends_on :autoconf
  depends_on :automake
  depends_on :libtool

  def install
    inreplace 'autogen.sh'

    system 'sh autogen.sh'
    system './configure', '--disable-openmp', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
