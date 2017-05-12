class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.50.0.tar.gz'
  sha256 'ad2447d16b16a16642e7791fa5908649fe11697640a6c18cb3e8b269f9d8c822'
  version '0.50.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.50.0'
  end

  test do
    system 'bs', '--help'
  end
end
