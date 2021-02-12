class Pipes < Formula
  desc "Swift implementation of CMS Pipelines - stream-based record processing"
  homepage "https://github.com/edwardaux/pipes"
  url "https://github.com/edwardaux/Pipes/archive/1.1.0.tar.gz"
  version "1.0.0"
  sha256 "53b74deca4f52360dade646cf38ffd0ba85c1c49e2c4753c57ed5635e52e78f2"
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
