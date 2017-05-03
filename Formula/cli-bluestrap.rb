class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.43.0.tar.gz'
  sha256 'bfde08db1d67187c670e3ee4c85d6c57e1b9022f03073c3cd8b5387bb84759df'
  version '0.43.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.43.0'
  end

  test do
    system 'bs', '--help'
  end
end
