require 'chefspec'

describe 'stub out searches' do
  it 'stub out search queries' do
    Chef::Recipe.any_instance.stub(:search).with(:node, "*:*").and_return([{"hostname" => "node1.example.com" }, {"hostname" => "node2.example.com"}])
    runner = ChefSpec::ChefRunner.new 
    runner.converge 'mytestcookbook::search_demo'
  end

  it 'stub out data_bag_item' do
    pending 'stub out dbi'
 #   KEY = 'myfavoritekey'
 #   Chef::Search::Query.any_instance.stub(:search).and_return(Array.new)
 #   Chef::Recipe.any_instance.stub(:data_bag_item).and_return(Hash.new)
 #   Chef::Recipe.any_instance.stub(:data_bag_item).with("mongodb", "keyfile").and_return({"id" => "keyfile", "key" => KEY})
 #   runner = ChefSpec::ChefRunner.new do |node|
 #     node[:mongodb] = { :cluster_name => RS_NAME }
 #   end
 #   runner.converge 'mongodb::replicaset'
 #   runner.should create_file_with_content('/etc/default/mongodb', "--keyFile /etc/mongodb.key")
  end
end
