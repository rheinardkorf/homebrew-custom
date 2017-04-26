class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.39.0.tar.gz'
  sha256 'c27c73c8a05353ccda9f301bf73055d92573794fd2b1f84fdec2cd734f1aa5e1'
  version '0.39.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.39.0'
  end

  test do
    system 'bs', '--help'
  end
end
