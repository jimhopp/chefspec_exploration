require 'chefspec'

describe 'mytestcookbook::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'mytestcookbook::default' }
  it 'should always install git-core' do
    chef_run.should install_package 'git-core'
  end
end
