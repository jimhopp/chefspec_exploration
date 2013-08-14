# simple search

data_bag_item = Chef::EncryptedDataBagItem.load("my_data_bag", "my_item")

file "/etc/my_file" do
  content data_bag_item["fun data"]
  mode 00644
  not_if {data_bag_item.empty?}
  action :create # must have action, chefspec will not default action :create
end
