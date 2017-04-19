class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.29.0.tar.gz'
  sha256 '4aec18de19780713f948632cfa7f53f4e2ef209efb9baf0927753b6a5ca46f89'
  version '0.29.0'

  conflicts_with "madebymany/pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.29.0'
  end

  test do
    system 'bs', '--help'
  end
end
