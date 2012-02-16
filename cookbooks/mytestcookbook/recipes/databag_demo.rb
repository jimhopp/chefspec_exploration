# simple search

data_bag_item = data_bag_item("my_data_bag", "my_item")

file "/etc/my_file" do
  content data_bag_item["my_item"]
  mode 00644
  not_if {data_bag_item.empty?}
end
