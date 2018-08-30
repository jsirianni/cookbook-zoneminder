#
# Cookbook:: zoneminder
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'zoneminder::users'
include_recipe 'zoneminder::packages'
include_recipe 'zoneminder::apache'
include_recipe 'zoneminder::php'
include_recipe 'zoneminder::zoneminder'
include_recipe 'zoneminder::services'
