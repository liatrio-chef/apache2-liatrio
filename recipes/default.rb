#
# Cookbook Name:: apache2-liatrio
# Recipe:: default
#

include_recipe 'apache2'

directory '/var/www/some_vhost.com' do
  user 'root'
  group 'root'
  mode '0755'
  action :create
end
