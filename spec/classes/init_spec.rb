require 'spec_helper'
describe 'remote_syslog2' do

  context 'with defaults for all parameters' do
    it { should contain_class('remote_syslog2') }
  end
end
