
mytestcookbook_manage "try foo" do
  action :foo
end

mytestcookbook_manage "run cmd" do
  action :bar
  stuff node['mytestcookbook']['cmd']
end
