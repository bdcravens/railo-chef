#
# Cookbook Name:: railo
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

if node[:railo][:apache]
  include_recipe "apache2"
  include_recipe "apache2::mod_dir"
  include_recipe "apache2::mod_alias"
end

include_recipe "java"

directory "/opt/files" do
  owner "root"
  group "root"
  action :create
end