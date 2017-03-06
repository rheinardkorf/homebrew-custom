require 'formula'
require 'tmpdir'

class DockerCredentialEcrLogin < Formula
  VERSION = '589f7070767646f2b220504930f803accb1e88a7'

  homepage 'https://github.com/awslabs/amazon-ecr-credential-helper'
  url "https://github.com/awslabs/amazon-ecr-credential-helper/archive/#{VERSION}.tar.gz"
  sha256 '99947939b9997a17612db0634f13fcfb769e96dd549b1964a8e2d5d5e573661b'
  version VERSION
  head 'https://github.com/awslabs/amazon-ecr-credential-helper.git', :branch => 'implement-helper-list'
  depends_on 'go' => :build

  def install
    Dir.mktmpdir('docker-credential-ecr-login') do |tmp_dir|
      ENV['GOPATH'] = tmp_dir
      ENV['PATH'] = [File.join(tmp_dir, 'bin'), ENV['PATH']].join(':')
      pkg_dir = File.join(tmp_dir, 'src/github.com/awslabs/amazon-ecr-credential-helper')

      system 'mkdir', '-p', File.dirname(pkg_dir)
      system 'ln', '-s', Dir.pwd, pkg_dir
      system "cd #{pkg_dir} && make"
      bin.install 'bin/local/docker-credential-ecr-login'
    end
  end

  def caveats
    <<-EOS.undent
      Set the contents of your ~/.docker/config.json file to be:

      {
          "credsStore": "ecr-login"
      }

    EOS
  end
end
