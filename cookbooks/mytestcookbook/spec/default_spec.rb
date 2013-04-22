require 'bundler/setup'
require 'chefspec'

describe 'mytestcookbook::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'mytestcookbook::default' }
  it 'should always install git-core' do
    expect(chef_run).to install_package 'git-core'
  end
end
