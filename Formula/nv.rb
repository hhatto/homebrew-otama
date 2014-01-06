require 'formula'

class Nv < Formula
  homepage 'https://github.com/nagadomi/nv'
  url 'https://github.com/nagadomi/nv/archive/v2.1.4.tar.gz'
  sha1 'cd3d1cfebccf7b62ec220644cfe06cb14edc1d0b'

  head 'https://github.com/nagadomi/nv.git'

  depends_on 'glib'
  depends_on 'pkg-config'

  depends_on :autoconf => :build
  depends_on :automake => :build
  depends_on :libtool => :build

  def install
    inreplace 'autogen.sh', 'libtoolize', 'glibtoolize'

    system 'sh autogen.sh'
    system './configure', '--disable-openmp', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
