require 'spec_helper'
describe 'journald' do

  let(:facts){ {
    :osfamily               => 'RedHat',
    :operatingsystemrelease => '7.0',
  } }

  context 'with defaults for all parameters' do
    it { should contain_class('journald') }
  end
end
