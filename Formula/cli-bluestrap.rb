class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.15.0.tar.gz'
  sha256 'dd3872840b887c07770c323c0e13e545b9587346df8c61eb7accb00831d67de0'
  version '0.15.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.15.0'
  end

  test do
    system 'bs', '--help'
  end
end
