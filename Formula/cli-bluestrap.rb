class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.31.0.tar.gz'
  sha256 'a39c496dd370da1cf142db4dff4bfec12531e047afc9ff288148d0a34ae81922'
  version '0.31.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.31.0'
  end

  test do
    system 'bs', '--help'
  end
end
