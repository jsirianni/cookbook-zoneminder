#
# Cookbook:: cookbook-zoneminder
# Recipe:: apache
#
# Copyright:: 2018, The Authors, All Rights Reserved.


execute 'sudo a2enmod cgi' do
    not_if "sudo apache2ctl -M | grep cgi"
end


execute 'sudo a2enmod rewrite' do
    not_if "sudo apache2ctl -M | grep rewrite"
end


execute 'sudo a2enconf zoneminder' do
    not_if { ::File.exist?('/etc/apache2/conf-enabled/zoneminder.conf')}
end
