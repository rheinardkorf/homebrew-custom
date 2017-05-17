class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.51.0.tar.gz'
  sha256 'eefa7c1eb7271342183bf539e50d0d2afddeb95c65fafca37f7277f2588fb4f3'
  version '0.51.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.51.0'
  end

  test do
    system 'bs', '--help'
  end
end
