require 'spec_helper'

describe 'journald' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context 'with defaults for all parameters' do
          it { should compile.with_all_deps() }
          it { should contain_class('journald') }
          it { should contain_class('journald::config') }
          # it { should contain_class('journald::config').that_notifies("Class['journald::service']") }
          it { should contain_class('journald::service') }
        end
      end
    end
  end
end