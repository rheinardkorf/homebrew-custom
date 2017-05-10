class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.47.0.tar.gz'
  sha256 'b3161067199efbac39bb2b6c8b902469e2ac621b99ca5895c172df0896cca2cb'
  version '0.47.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.47.0'
  end

  test do
    system 'bs', '--help'
  end
end
