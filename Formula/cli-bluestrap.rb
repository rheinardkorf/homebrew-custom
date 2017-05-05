class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.46.0.tar.gz'
  sha256 'f67d480fc6c49f31dc4e313641dbc8344daa847921a2f39703004facdc5406f7'
  version '0.46.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.46.0'
  end

  test do
    system 'bs', '--help'
  end
end
