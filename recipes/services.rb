#
# Cookbook:: cookbook-zoneminder
# Recipe:: packages
#
# Copyright:: 2018, The Authors, All Rights Reserved.


service 'apache2' do
  supports :status => true
  action [:enable, :start]
end


service 'mysql' do
  supports :status => true
  action [:enable, :start]
end


service 'zoneminder' do
  supports :status => true
  action [:enable, :start]
end
