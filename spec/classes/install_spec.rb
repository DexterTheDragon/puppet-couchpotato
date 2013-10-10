require 'spec_helper'

describe 'couchpotato::install', :type => :class do
  context 'on Debian' do
    let :facts do
      {
        :osfamily => 'Debian',
      }
    end

    it { should contain_couchpotato__install }

    it do
      should contain_vcsrepo('couchpotato').with(
        :ensure => 'latest',
        :provider => 'git',
      )
    end

    it do
      should contain_file('/etc/init.d/couchpotato').with(
        :ensure => 'present',
        :source => '/couchpotato/init/ubuntu',
        :mode => '0755',
        :require => 'Vcsrepo[couchpotato]',
      )
    end

  end
end
