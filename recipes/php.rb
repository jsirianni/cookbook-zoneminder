#
# Cookbook:: cookbook-zoneminder
# Recipe:: php
#
# Copyright:: 2018, The Authors, All Rights Reserved.


template node[:zm][:php][:config] do
  source node[:zm][:php][:config_template]
  owner  'root'
  group  'root'
  mode   '0644'
  action :create
  notifies :reload, 'service[apache2]', :immediately
end
