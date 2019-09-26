require 'spec_helper'

describe 'puppet_test_issue' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
      let(:params) do
        {
          some_binary: Puppet::Pops::Types::PBinaryType::Binary.from_string('Zm9v')
        }
      end

      it { is_expected.to compile }
    end
  end
end
