#
# Cookbook Name:: devopsdemo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

cookbook_file '/var/lib/tomcat7/webapps/MyAppDemo.war' do
  source 'MyAppDemo.war'
  action :create
end

cookbook_file '/tmp/databaserelease.sql' do
  source 'databaserelease.sql'
  action :create
end

script 'compile_db' do
  interpreter "bash"
  code <<-EOH
   mysql -uroot -proot < /tmp/databaserelease.sql
  EOH
end

