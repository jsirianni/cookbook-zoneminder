#
# Cookbook:: cookbook-zoneminder
# Recipe:: zoneminder
#
# Copyright:: 2018, The Authors, All Rights Reserved.




file "/etc/zm/zm.conf" do
    owner "root"
    group "www-data"
    mode '0740'

    # enforce permissions but never overwrite the cert
    action :create
end


directory '/usr/share/zoneminder' do
    owner 'www-data'
    group 'www-data'
    mode '0775'
    recursive true
    action :create
end
