require 'bundler/setup'                                                         
require 'chefspec'

describe 'mytestcookbook::default' do
  it 'note that warning log msg shows up but not info' do
    chef_run = ChefSpec::ChefRunner.new.converge 'mytestcookbook::default' 
    chef_run.should install_package 'git-core'
    Chef::Log.warn("warn msg shows up but not info")
    Chef::Log.info("this msg does not appear")
  end

  it 'info and warning log msgs show up' do
    # note setting log_level in the CherRunner initializer. 
    # 'info' messages include all of the execution messages
    chef_run = ChefSpec::ChefRunner.new(:log_level => :info).converge 'mytestcookbook::default' 
    chef_run.should install_package 'git-core'
    Chef::Log.warn("warn msg shows up as well as info")
    Chef::Log.info("this msg does not appear")
  end
end
