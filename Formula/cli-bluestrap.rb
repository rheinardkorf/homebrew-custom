class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.12.0.tar.gz'
  sha256 'cb12cfa541523f1e6b4a7a1955a0ddc94c09547f3152263e60fa6be2a55d6784'
  version '0.12.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', VERSION=0.12.0
  end

  test do
    system 'bs', '--help'
  end
end
