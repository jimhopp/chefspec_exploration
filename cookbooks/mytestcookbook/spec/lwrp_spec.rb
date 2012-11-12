require 'bundler/setup'
require 'chefspec'

describe 'mytestcookbook::lwrp' do
  let(:runner) {
    runner = ChefSpec::ChefRunner.new(:step_into => ['mytestcookbook_manage'])
  }
  let(:chef_run) {
    runner.node.set["mytestcookbook"] = { :cmd => 'echo "adios"' }
    runner.converge 'mytestcookbook::lwrp'
  }
  it 'should install foo' do
    chef_run.should install_package 'foo'
  end
  it 'executes stuff' do
    cmd = 'echo "hello!"'
    runner.node.set["mytestcookbook"] = { :cmd => cmd }
    runner.converge 'mytestcookbook::lwrp'
    runner.should execute_command cmd
  end
end
