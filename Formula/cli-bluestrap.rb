class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/playpen-homebrew/cli-bluestrap-0.0.2.tar.gz'
  sha256 'ad0ee7c72b88ad21f96afe9b22597923a071b540d3a9288a300ec8c5612b0508'
  version '0.0.2'

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
