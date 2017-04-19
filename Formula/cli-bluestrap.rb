class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.28.0.tar.gz'
  sha256 'aa42592999ad0ce38c2d7527671fe19bfa6dbf55d24f9d2407e177a0decf5198'
  version '0.28.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.28.0'
  end

  test do
    system 'bs', '--help'
  end
end
