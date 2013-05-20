require 'formula'

class Remctl < Formula
  homepage 'http://www.eyrie.org/~eagle/software/remctl/'
  url 'http://archives.eyrie.org/software/kerberos/remctl-3.4.tar.gz'
  sha1 '0d6757124255e84f5e951986c8a577ef09c6936b'

  depends_on 'pcre'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--with-pcre=#{HOMEBREW_PREFIX}"
    system "make install"
  end

  def test
    system "#{bin}/remctl", "-v"
  end
end
