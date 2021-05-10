class Pipes < Formula
  desc "Swift implementation of CMS Pipelines - stream-based record processing"
  homepage "https://github.com/edwardaux/pipes"
  url "https://github.com/edwardaux/Pipes/archive/1.2.0.tar.gz"
  version "1.2.0"
  sha256 "6023114d226d3ae3b3f60e4a88a397e83c7004b47a3de59faddfb4310b069d91"
  license "MIT"

  depends_on :xcode => ["12.0", :build]

  def install
    system "make"
    bin.install ".build/release/CLI" => "pipe"
  end

  test do
    system "#{bin}/pipe literal hello"
  end
end
