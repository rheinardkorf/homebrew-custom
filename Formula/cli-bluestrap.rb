class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.27.0.tar.gz'
  sha256 '50b0c550df92a216ec54d24155ca92807cec3bccd8fe0112b27754b4fa428520'
  version '0.27.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.27.0'
  end

  test do
    system 'bs', '--help'
  end
end
