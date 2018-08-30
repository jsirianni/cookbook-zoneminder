#
# Cookbook:: cookbook-zoneminder
# Recipe:: packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_repository 'zoneminder' do
    uri node[:zm][:repo][:uri]
    notifies :run, 'execute[update_apt]', :immediately
end


execute 'update_apt' do
    command 'sudo apt-get update'
    action :nothing
end


package node[:zm][:prerequisite_packages] do
    action :install
end


package 'zoneminder' do
    action :install
end
