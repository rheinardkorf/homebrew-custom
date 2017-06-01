class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.53.0.tar.gz'
  sha256 'a4b9dd719e4f7ccda0e923ff2ecf3c376f1702b886b2debbf054335f99bf13c1'
  version '0.53.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.53.0'
  end

  test do
    system 'bs', '--help'
  end
end
