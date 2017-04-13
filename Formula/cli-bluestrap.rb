class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.10.0.tar.gz'
  sha256 '1e8484ac11e4feba3ab7e77ee5541dad39e6f0f17894c76e794ceefb0432f6e0'
  version '0.10.0'

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
