class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.51.1.tar.gz'
  sha256 'd805f2a6111f04b3c4aba55149dbc546ebb12a3457616b34a20a033ea8656678'
  version '0.51.1'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.51.1'
  end

  test do
    system 'bs', '--help'
  end
end
