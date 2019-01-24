class Fnm < Formula
  desc "🚀 Fast and simple Node.js version manager, built in ReasonML"
  homepage "https://github.com/Schniz/fnm"
  url "https://github.com/Schniz/fnm/releases/download/v1.0.0/fnm-macos.zip"
  version "1.0.0"
  sha256 "ce2aadc70b06f806c53117d3c7280fd4c831d080167e08ba4f39771429763ba0"

  bottle :unneeded

  def install
    bin.install "fnm"
  end

  test do
    output = pipe_output("#{bin}/fnm --version")
    assert_match "1.0.0", output
  end
end
