class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.13.0.tar.gz'
  sha256 '7f3f796856acf1fea73a9f394eae5c5409085cccfde3d87c380d5fd7ecccbac9'
  version '0.13.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.13.0'
  end

  test do
    system 'bs', '--help'
  end
end
