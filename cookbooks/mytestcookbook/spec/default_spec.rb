require 'chefspec'

describe 'mytestcookbook::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'mytestcookbook::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
