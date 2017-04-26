class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.37.0.tar.gz'
  sha256 'fb7c620aca02b0822b75b24bab6a7b554415c0bf1d44bc65ba6a6ae3907fc39d'
  version '0.37.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.37.0'
  end

  test do
    system 'bs', '--help'
  end
end
