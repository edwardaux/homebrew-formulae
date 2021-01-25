class Pipes < Formula
  desc "Swift implementation of CMS Pipelines - stream-based record processing"
  homepage "https://github.com/edwardaux/pipes"
  url "https://github.com/edwardaux/pipes.git"
  version "1.0.0"
  sha256 ""
  license "MIT"

  depends_on :xcode => ["12.0", :build]

  def install
    system "make"
    bin.install ".build/release/CLI" => "pipes"
  end

  test do
    system "#{bin}/pipe literal hello"
  end
end
