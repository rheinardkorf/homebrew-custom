class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.61.0.tar.gz'
  sha256 '26aad4851704f45d5581cfefb647bbee29c849f1c28c4f88b5e1e0d7144b8846'
  version '0.61.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.61.0'
  end

  test do
    system 'bs', '--help'
  end
end
