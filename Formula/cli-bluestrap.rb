class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.58.0.tar.gz'
  sha256 '715ac8f5b34df68292ee438152c9bee770b8deaaeed70ab576424111f5d5bb94'
  version '0.58.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.58.0'
  end

  test do
    system 'bs', '--help'
  end
end
