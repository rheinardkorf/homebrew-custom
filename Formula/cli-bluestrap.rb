class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.30.0.tar.gz'
  sha256 'cbaa44f4263c2ba48c8c953aefcbbb4407460da4d7524ac05d0dc5980c2347b9'
  version '0.30.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.30.0'
  end

  test do
    system 'bs', '--help'
  end
end
