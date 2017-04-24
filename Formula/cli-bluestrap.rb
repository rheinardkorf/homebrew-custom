class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.36.0.tar.gz'
  sha256 'b573fd07caf926c88b0ee82030f7b0e9248c992c4fd25c6f461e8aadeb5bfd2a'
  version '0.36.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.36.0'
  end

  test do
    system 'bs', '--help'
  end
end
