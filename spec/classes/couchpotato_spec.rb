require 'spec_helper'

describe 'couchpotato', :type => :class do
  context 'on Debian' do
    let :facts do
      {
        :osfamily => 'Debian',
      }
    end

    it { should contain_couchpotato }

    it { should contain_class('couchpotato::install') }
    it { should contain_class('couchpotato::config') }
    it { should contain_class('couchpotato::service') }

    context 'with parameters' do
      let :params do
        {
        :run_as => 'foo',
        :data_dir => '/some/config',
        :pid_file => '/var/run/couchpotato/couchpotato.pid',
        }
      end

      it do
        should contain_file('/etc/default/couchpotato').
          with_content(/^CP_USER=foo$/).
          with_content(%r{^CP_DATA=/some/config$}).
          with_content(%r{^CP_PIDFILE=/var/run/couchpotato/couchpotato.pid$})
      end
    end

  end
end
