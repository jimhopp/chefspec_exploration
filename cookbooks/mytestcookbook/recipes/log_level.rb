#
# Cookbook Name:: mytestcookbook
# Recipe:: log_level
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.warn("This message is at WARN level")
Chef::Log.info("This message is at INFO level")

log "this message is at INFO" do
  level :info
end
