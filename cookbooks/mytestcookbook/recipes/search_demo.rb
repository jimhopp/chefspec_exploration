# simple search

all_nodes = search(:node, "*:*")

all_nodes.each do |node|
  Chef::Log.warn("node's hostname: #{node['hostname']}")
end
