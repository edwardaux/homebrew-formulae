class Pipes < Formula
  desc "Swift implementation of CMS Pipelines - stream-based record processing"
  homepage "https://github.com/edwardaux/pipes"
  url "https://github.com/edwardaux/Pipes/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "bacc05e9fcda7ec4fed435f5b8482f7d629c273746889e003a2212ca5be70fc0"
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
