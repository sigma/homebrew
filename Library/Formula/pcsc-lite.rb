require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class PcscLite < Formula
  homepage ''
  url 'http://alioth.debian.org/frs/download.php/3757/pcsc-lite-1.8.6.tar.bz2'
  version '1.8.6'
  sha1 '24932dfadf9504e17c628d556bd7a15b746e4811'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test pcsc-lite`.
    system "false"
  end
end
