class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.21.0.tar.gz'
  sha256 '56f450739711f2051bdd67210ce2b231c3159fe3f931679267e1a3d9277f992b'
  version '0.21.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.21.0'
  end

  test do
    system 'bs', '--help'
  end
end
