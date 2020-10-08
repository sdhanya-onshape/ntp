require 'spec_helper'

describe 'ntp' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }

      it { is_expected.to contain_class('ntp::install') }
      it { is_expected.to contain_class('ntp::config') }
      it { is_expected.to contain_class('ntp::service') }

      it { is_expected.to contain_package('ntp').with(ensure: 'installed') }

      it { is_expected.to contain_file('/etc/ntp.conf').with_owner('root') }
      it { is_expected.to contain_file('/etc/ntp.conf').with_group('root') }
      it { is_expected.to contain_file('/etc/ntp.conf').with_mode('0644') }
      it { is_expected.to contain_file('/etc/ntp.conf').with('content' => %r{server \d.centos.pool.ntp.org}) }

      it { is_expected.to contain_service('ntp').with(ensure: 'running', enable: true, hasstatus: true, hasrestart: true) }
    end
  end
end
