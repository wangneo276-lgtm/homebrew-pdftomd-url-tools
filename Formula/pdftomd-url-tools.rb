class PdftomdUrlTools < Formula
  desc 'Free in-browser pdf to md tool. Drop a text PDF, preview Markdown, copy or download—files stay on your device. No account required.'
  homepage "https://pdftomd.tools/"
  url "https://github.com/wangneo276-lgtm/pdftomd-url-tools/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f135692a643fd9caf221b3d7290602ff5d8aa6430b9926afc481be61783056ac"
  license "MIT"

  def install
    bin.install "bin/pdftomd-url-tools"
  end

  test do
    assert_equal "https://pdftomd.tools/md-to-pdf\n", shell_output("#{bin}/pdftomd-url-tools page md-to-pdf")
  end
end
