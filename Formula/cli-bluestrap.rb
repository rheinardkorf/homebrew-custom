class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.54.0.tar.gz'
  sha256 '611c314afaafe1a0f3c261b14d412a3b6074fd2a3becc66833b9b1e3540636dc'
  version '0.54.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.54.0'
  end

  test do
    system 'bs', '--help'
  end
end
