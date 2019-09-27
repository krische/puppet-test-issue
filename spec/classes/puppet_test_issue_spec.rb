require 'spec_helper'

describe 'puppet_test_issue' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      context 'with parameter' do
        let(:params) do
          {
            some_binary: Puppet::Pops::Types::PBinaryType::Binary.from_base64('Zm9v'),
          }
        end

        it { compile }
      end

      context 'without parameter' do
        it { is_expected.to compile }
      end
    end
  end
end
