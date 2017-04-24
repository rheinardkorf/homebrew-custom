class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.34.0.tar.gz'
  sha256 '2eb969d77d96671250e51b2f605d3b03fe43cddfd6212385708c63cfa2d078f2'
  version '0.34.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.34.0'
  end

  test do
    system 'bs', '--help'
  end
end
