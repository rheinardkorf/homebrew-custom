class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.38.0.tar.gz'
  sha256 '7807c1e4d3c9293ee18d7078fbdb3ae2af7b93e46b0506f0b43abf96cf199910'
  version '0.38.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.38.0'
  end

  test do
    system 'bs', '--help'
  end
end
