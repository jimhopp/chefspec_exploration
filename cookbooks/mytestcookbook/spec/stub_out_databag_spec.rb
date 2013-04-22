require 'bundler/setup'
require 'chefspec'

describe 'stub out databags' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'mytestcookbook::databag_demo' }
  it 'stub out data_bag_item' do
    Chef::Recipe.any_instance.stub(:data_bag_item).and_return(Hash.new)
    Chef::Recipe.any_instance.stub(:data_bag_item).with("my_data_bag", "my_item").and_return({"id" => "my_item", "fun data" => "whatever"})
    expect(chef_run).to create_file_with_content('/etc/my_file', 'whatever')
  end
end
