class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.51.4.tar.gz'
  sha256 '8b5eebc2e10d944d0ae6675366f491061833ac2ea2f542f46b8ebd62d620588d'
  version '0.51.4'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.51.4'
  end

  test do
    system 'bs', '--help'
  end
end
