class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.19.0.tar.gz'
  sha256 'dcc56ed943e9086c5e5f2b3da0a5f36c00e0a20a75ce3976a43617dd0237027c'
  version '0.19.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.19.0'
  end

  test do
    system 'bs', '--help'
  end
end
