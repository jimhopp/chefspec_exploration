require 'bundler/setup'                                                         
require 'chefspec'

describe 'stub out searches' do
  it 'stub out search queries' do
    Chef::Recipe.any_instance.stub(:search).with(:node, "*:*").and_return([{"hostname" => "node1.example.com" }, {"hostname" => "node2.example.com"}])
    runner = ChefSpec::ChefRunner.new 
    runner.converge 'mytestcookbook::search_demo'
  end
end
