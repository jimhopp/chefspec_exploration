require 'bundler/setup'
require 'chefspec'

describe 'cookbook_file tests' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'mytestcookbook::cookbook_files' } 
  it 'cookbook file copied with correct content' do
    chef_run.should create_cookbook_file 'my-test-cookbook-file.cnf'
    chef_run.should create_file_with_content 'my-test-cookbook-file.cnf', 'some useful content'
  end
end
