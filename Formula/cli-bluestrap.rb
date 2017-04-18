class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.22.0.tar.gz'
  sha256 'a4872ddc21c24d88a127d90295c77107d893c96cade551ab6feffac89e8234ec'
  version '0.22.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.22.0'
  end

  test do
    system 'bs', '--help'
  end
end
