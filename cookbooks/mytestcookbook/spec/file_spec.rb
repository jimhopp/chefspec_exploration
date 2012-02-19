require 'bundler/setup'
require 'chefspec'

describe 'file tests' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'mytestcookbook::files' } 
  it 'file copied with correct content' do
    chef_run.should create_file 'my-test-file.cnf'
    chef_run.should create_file_with_content 'my-test-file.cnf', 'some useful content'
  end
end
