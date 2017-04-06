class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/playpen-homebrew/cli-bluestrap.0.0.1.tar.gz'
  sha256 '0ab1090e30c3a032254072a125f8a1585b634efe4e0e9dc5c1c6248a001d58f2'
  version '0.0.1'

  conflicts_with "pharod", :because => "it is broken"

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install'
  end

  test do
    system 'bs', '--help'
  end
end
