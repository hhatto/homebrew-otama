require 'formula'

class Otama < Formula
  homepage 'https://github.com/nagadomi/otama'
  url 'https://github.com/nagadomi/otama/archive/v0.7.5.tar.gz'
  sha256 'e04a2e97cb435b8815e14a5988da96d4f3b35a7add18b7c20b53bc04559ebd8a'

  head 'https://github.com/nagadomi/otama.git'

  depends_on 'autoconf'
  depends_on 'automake'
  depends_on 'libtool'
  depends_on 'nv'
  depends_on 'leveldb'
  depends_on 'openssl'

  def install
    system 'sh autogen.sh'
    system './configure', '--disable-openmp', '--without-ruby', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'install'
  end
end
