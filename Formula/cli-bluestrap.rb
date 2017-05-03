class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.42.0.tar.gz'
  sha256 'd0efb4f861b15e55961d2dabda1d1d540f358e831409e98568bc535cdf626e0e'
  version '0.42.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.42.0'
  end

  test do
    system 'bs', '--help'
  end
end
