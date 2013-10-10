require 'spec_helper'

describe 'couchpotato::config', :type => :class do
  it { should contain_couchpotato__config }
  context 'on Debian' do
    let :facts do
      {
        :osfamily => 'Debian',
      }
    end

    it do
      should contain_file('/etc/default/couchpotato')
    end
  end
end
