require 'bundler/setup'
require 'chefspec'

describe 'mytestcookbook::log_level' do
  it 'note that warning log msg shows up but not info' do
    chef_run = ChefSpec::ChefRunner.new.converge 'mytestcookbook::log_level'
    Chef::Log.warn("warn msg shows up but not info")
  end

  it 'info and warning log msgs show up' do
    # note setting log_level in the CherRunner initializer.
    # 'info' messages include all of the execution messages
    chef_run = ChefSpec::ChefRunner.new(:log_level => :info).converge 'mytestcookbook::log_level'
    Chef::Log.warn("warn msg shows up as well as info")
    expect(chef_run).to log "this message is at INFO"
  end

end
