require 'spec_helper'

describe 'couchpotato' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "couchpotato class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should include_class('couchpotato::params') }

        it { should contain_class('couchpotato::install') }
        it { should contain_class('couchpotato::config') }
        it { should contain_class('couchpotato::service') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'couchpotato class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
