class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.32.0.tar.gz'
  sha256 '38b31a04d5c1b69d05aac7c97a88f10a711d9596aefb7b9d87cbcdf583a0986c'
  version '0.32.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.32.0'
  end

  test do
    system 'bs', '--help'
  end
end
