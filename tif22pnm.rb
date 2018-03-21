class Tif22pnm < Formula
  desc "TIFF-to-PNM converter and png22pnm, a PNG-to-PNM converter"
  homepage "https://github.com/pts/tif22pnm"
  url "https://github.com/pts/tif22pnm/archive/2014-01-09.tar.gz"
  sha256 "d716f61cbb127da4cfa12b4ceb807d73e1029e1ce3dc4278b88ccfa04c886c38"
  head "https://github.com/pts/tif22pnm.git"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "./do.sh", "compile"
    bin.install "tif22pnm"
    bin.install "png22pnm"
  end

  test do
    system "#{bin}/tif22pnm", "-verbose"
  end
end
