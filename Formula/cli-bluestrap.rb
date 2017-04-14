class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.14.0.tar.gz'
  sha256 'af11c40a912f3a00766bd1a0c836b8fb64bb00444b674d8c9dbc4cd303a2e1dc'
  version '0.14.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.14.0'
  end

  test do
    system 'bs', '--help'
  end
end
