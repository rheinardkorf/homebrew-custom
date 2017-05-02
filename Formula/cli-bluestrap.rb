class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.40.0.tar.gz'
  sha256 '36f8bc51cdd7d208891346cc242f978aeefb2d9d74bc4ed714abbe8667791913'
  version '0.40.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.40.0'
  end

  test do
    system 'bs', '--help'
  end
end
