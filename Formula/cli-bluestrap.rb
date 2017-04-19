class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.26.0.tar.gz'
  sha256 '345cdeaaf00c77b418866b090b2be46d462b0df3785b2d4b4e3907e061999442'
  version '0.26.0'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.26.0'
  end

  test do
    system 'bs', '--help'
  end
end
