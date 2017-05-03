class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.45.0.tar.gz'
  sha256 'f18a0adf7191480c8fb55822ecf73fe23c5354ae85bb61347a7691b402237218'
  version '0.45.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.45.0'
  end

  test do
    system 'bs', '--help'
  end
end
