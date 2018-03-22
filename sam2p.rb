class Sam2p < Formula
  desc "Raster image converter with smart PDF and PostScript output"
  homepage "https://github.com/pts/sam2p"
  url "https://github.com/pts/sam2p/archive/v0.49.4.tar.gz"
  sha256 "17313810a724aaf6ef7c146443c452f324edfd70ae291eb1f5a297c621df9d1e"
  head "https://github.com/pts/sam2p.git"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--enable-gif",
                          "--enable-lzw"
    system "make"
    system "make", "install"
  end

  test do
    # system "#{bin}/sam2p", "ptsbanner_zip.job"
    system "curl", "-L", "-o", "pts2.pbm", "https://github.com/pts/sam2p/raw/master/examples/pts2.pbm"
    system "#{bin}/sam2p", "pts2.pbm", "try.eps"
    assert_predicate testpath/"try.eps", :exist?
  end
end
