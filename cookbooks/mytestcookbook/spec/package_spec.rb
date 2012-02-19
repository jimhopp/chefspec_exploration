require 'bundler/setup'
require 'chefspec'

describe 'mytestcookbook::packages' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'mytestcookbook::packages' }
  it 'should always install git-core' do
    chef_run.should install_package 'git-core'
  end
end
