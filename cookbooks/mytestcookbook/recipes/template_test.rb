# tests template generation

template "/etc/my-template" do
  source "test.erb"
  variables(:foo => "bar")
  action :create  # chefspec requires an action - it won't default it as chef will
end
