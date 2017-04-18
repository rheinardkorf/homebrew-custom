class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.17.0.tar.gz'
  sha256 'd8257f4e3945709fae137230e960b32094de9546f5d6fe3236d9731cd7d0161c'
  version '0.17.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.17.0'
  end

  test do
    system 'bs', '--help'
  end
end
