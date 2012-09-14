
def initialize(*args)
  super
  @action = :foo
end

action :foo do
  package 'foo' do
    action :install
  end
end

action :bar do
  execute new_resource.name do
    command new_resource.stuff
  end
end
