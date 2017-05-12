class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.49.0.tar.gz'
  sha256 'abc535067d9501da57bd660e925ca79c79dfa1f51696000255b75f535edd4f9d'
  version '0.49.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.49.0'
  end

  test do
    system 'bs', '--help'
  end
end
