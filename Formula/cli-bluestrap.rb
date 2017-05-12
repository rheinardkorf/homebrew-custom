class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.48.0.tar.gz'
  sha256 'aeb1c9665f5eaea9b28297cc0dedeb6bc8867dfbb03eda1d444cd80a96f86943'
  version '0.48.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.48.0'
  end

  test do
    system 'bs', '--help'
  end
end
