class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.60.0.tar.gz'
  sha256 'fd18ef30906a1ac1184c1b4479a405c8303261818949183720cea0747fc48f4a'
  version '0.60.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.60.0'
  end

  test do
    system 'bs', '--help'
  end
end
