class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.35.0.tar.gz'
  sha256 'a902ac2d341d3b883c4a828a933c609e360b54dac98732d39b37a53241d1692e'
  version '0.35.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.35.0'
  end

  test do
    system 'bs', '--help'
  end
end
