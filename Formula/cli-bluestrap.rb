class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.41.0.tar.gz'
  sha256 'cb73758288312debc2d968b5573b006f7b37ab2c2bba4575764d41871620fd6c'
  version '0.41.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.41.0'
  end

  test do
    system 'bs', '--help'
  end
end
