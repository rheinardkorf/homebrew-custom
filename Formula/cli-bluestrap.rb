class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.51.3.tar.gz'
  sha256 '9c1f75b32e941f4dbfc80051542bab0d34e59df116d34b72962c989368f200e2'
  version '0.51.3'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.51.3'
  end

  test do
    system 'bs', '--help'
  end
end
