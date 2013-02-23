require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ccid < Formula
  homepage ''
  url 'http://alioth.debian.org/frs/download.php/3768/ccid-1.4.8.tar.bz2'
  version '1.4.8'
  sha1 '5506e3471e4893fe9b3fbb83d4d42fb77a641a7a'

  depends_on 'pkg-config' => :build
  depends_on 'pcsc-lite'

  def install
    pcsclite = Formula.factory('pcsc-lite')

    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"

    system "make install"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test ccid`.
    system "false"
  end
end
