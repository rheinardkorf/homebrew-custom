class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.47.0.tar.gz'
  sha256 'ef76a91409756f3416bc8db924687203d4ca768116c0ee68f1c8b02dfa9c92f9'
  version '0.47.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.47.0'
  end

  test do
    system 'bs', '--help'
  end
end
