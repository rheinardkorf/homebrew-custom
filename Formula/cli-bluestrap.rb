class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.24.0.tar.gz'
  sha256 'b583e6461be90d4156ff10608a6ff3e7e55c9dd6294e97c31a75ffbfbca5ca8c'
  version '0.24.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.24.0'
  end

  test do
    system 'bs', '--help'
  end
end
