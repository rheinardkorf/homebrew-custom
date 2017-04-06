class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/playpen-homebrew/cli-bluestrap-0.0.1.tar.gz'
  sha256 '82237835efb286813c0397b16dea7491d3371b0262c25f792077f96d585b33e3'
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
