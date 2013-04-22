require 'bundler/setup'
require 'chefspec'

describe 'mytestcookbook::packages' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'mytestcookbook::packages' }
  it 'should always install git-core' do
    expect(chef_run).to install_package 'git-core'
  end
  it 'should always install mongo gem' do
    expect(chef_run).to install_gem_package 'mongo'
  end
  it 'should install statsd gem for use during chef run' do
    expect(chef_run).to install_chef_gem 'statsd'
  end
end
