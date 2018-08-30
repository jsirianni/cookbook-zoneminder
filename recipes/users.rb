#
# Cookbook:: cookbook-zoneminder
# Recipe:: users
#
# Copyright:: 2018, The Authors, All Rights Reserved.


group node[:zm][:group]


user node[:zm][:user] do
    group node[:zm][:groupk]
    system true
    shell '/bin/false'
end
