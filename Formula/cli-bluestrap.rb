class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.18.0.tar.gz'
  sha256 '1d3900ea3bffe732757113096c27c6afb0f1d836c3edf9893fdca4006d8947e3'
  version '0.18.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.18.0'
  end

  test do
    system 'bs', '--help'
  end
end
