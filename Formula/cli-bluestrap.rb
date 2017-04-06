class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/playpen-homebrew/cli-bluestrap-0.0.1.tar.gz'
  sha256 '05927d6cd3fddf6b081aa5dd86a71af6e8e9b4ec145da368c45e5e4e0c2ce5d7'
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
