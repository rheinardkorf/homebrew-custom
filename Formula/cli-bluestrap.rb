class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.56.0.tar.gz'
  sha256 '72e9e142e02e7f5d6ba6de4e54919828a4bf1e9783083e7773bb2ada1391c6f5'
  version '0.56.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.56.0'
  end

  test do
    system 'bs', '--help'
  end
end
