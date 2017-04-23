class CliBluestrap < Formula
  desc 'cli-bluestrap'
  homepage 'https://bitbucket.org/ffxblue/cli-bluestrap'
  url 'https://s3-ap-southeast-2.amazonaws.com/cli-bluestrap.ffxblue.com.au/cli-bluestrap-0.33.0.tar.gz'
  sha256 '2d4e3af61069b33bcddd1c76180f581e0cd1adae2882f88ec33e58cda22fb7c3'
  version '0.33.0'

  def install
    ENV.prepend_path "PATH", "/usr/local/bin"
    ENV["PREFIX"] = prefix
    system 'make', 'install', 'VERSION=0.33.0'
  end

  test do
    system 'bs', '--help'
  end
end
