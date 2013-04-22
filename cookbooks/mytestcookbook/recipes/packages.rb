package 'git-core' do
  action :install
end

gem_package 'mongo' do
  action :install
end

chef_gem 'statsd' do
  action :install
end
