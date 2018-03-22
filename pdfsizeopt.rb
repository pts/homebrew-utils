class Pdfsizeopt < Formula
  desc "PDF file size optimizer"
  homepage "https://github.com/pts/pdfsizeopt/"
  url "https://github.com/pts/pdfsizeopt/archive/2017-09-03d.tar.gz"
  sha256 "9961704f5d9fbdd9287337c67e9747bc354f070549a01d8e9ef0e87206520557"
  head "https://github.com/pts/pdfsizeopt.git"

  depends_on "ghostscript"
  depends_on "tif22pnm"
  depends_on "jbig2enc" => :recommended
  depends_on "jonof/kenutils/pngout" => :recommended
  depends_on "sam2p" => :recommended
  depends_on "zopfli" => :optional
  depends_on "optipng" => :optional
  depends_on "advancecomp" => :recommended

  def install
    system "./mksingle.py"
    mv "pdfsizeopt.single", "pdfsizeopt"
    bin.install "pdfsizeopt"
  end

  test do
    system "curl", "-L", "-o", "deptest.pdf", "https://github.com/pts/pdfsizeopt/raw/master/deptest/deptest.pdf"
    system "#{bin}/pdfsizeopt", "deptest.pdf"
    assert_predicate testpath/"deptest.pso.pdf", :exist?
  end
end
