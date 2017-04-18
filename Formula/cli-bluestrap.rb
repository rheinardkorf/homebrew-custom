class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.16.0.tar.gz'
  sha256 'abb4d63d6c2e76fa96eee85d0d3402df09e5fda8fa91e10f8836e81c96575060'
  version '0.16.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.16.0'
  end

  test do
    system 'bs', '--help'
  end
end
