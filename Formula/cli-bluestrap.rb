class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.51.2.tar.gz'
  sha256 '8b35bcb96151e94d20f1223f151fcffa0cae41af08858c3ed6a8caa22752d78f'
  version '0.51.2'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.51.2'
  end

  test do
    system 'bs', '--help'
  end
end
