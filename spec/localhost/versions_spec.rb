require 'spec_helper'

describe 'Ruby and Node.js versions' do
  # Test that Ruby 3.x versions are available
  ['3.0.7', '3.1.6', '3.2.6', '3.3.6', '3.4.1'].each do |version|
    describe file("/opt/rubies/#{version}") do
      it { should be_directory }
    end
  end

  # Test that Node.js 20+ versions are available
  ['20.0.0', '21.0.0', '22.0.0'].each do |version|
    describe file("/opt/nodes/#{version}") do
      it { should be_directory }
    end
  end
end