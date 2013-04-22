require 'bundler/setup'
require 'chefspec'

describe 'include_recipe tests' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'mytestcookbook::include_recipes' }
  it 'includes another recipe' do
    expect(chef_run).to include_recipe 'mytestcookbook::included_recipe'
  end
end
