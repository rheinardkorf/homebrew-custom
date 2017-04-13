class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/infrastructure-clibluestrap-development-v1/cli-bluestrap-0.11.0.tar.gz'
  sha256 '79ed80e783dae004d81308524bcb5ab12d08f3097318e5da6db3de997438f64e'
  version '0.11.0'

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
