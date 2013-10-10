require 'spec_helper'

describe 'couchpotato::service', :type => :class do
  context 'on Debian' do
    let :facts do
      {
        :osfamily => 'Debian',
      }
    end

    it { should contain_couchpotato__service }

    it do
      should contain_service('couchpotato').with(
        :ensure     => 'running',
        :enable     => true,
        :hasstatus  => true,
        :hasrestart => true,
      )
    end
  end
end
