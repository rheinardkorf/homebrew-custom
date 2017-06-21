class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.57.0.tar.gz'
  sha256 '4c5be7c107ffddca2230d9251675b10e62a54ca5778a6c188f34f95be9051729'
  version '0.57.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.57.0'
  end

  test do
    system 'bs', '--help'
  end
end
