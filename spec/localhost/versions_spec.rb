require 'spec_helper'

describe 'Ruby and Node.js versions' do
  # Test that Ruby 3.x versions are available
  ['3.0', '3.1', '3.2', '3.3'].each do |version|
    describe file("/opt/boxen/rbenv/versions/#{version}") do
      it { should be_directory }
    end
  end

  # Test that Node.js 20+ versions are available
  ['20.0', '21.0', '22.0'].each do |version|
    describe file("/opt/boxen/nodenv/versions/#{version}") do
      it { should be_directory }
    end
  end
end