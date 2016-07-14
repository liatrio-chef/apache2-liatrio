#
# Cookbook Name:: apache2-liatrio
# Recipe:: default
#

include_recipe 'apache2'

# work around to serve Hygieia via apache
execute "copy_ui" do
    command "cp -r /home/vagrant/Hygieia/UI/dist/* /var/www/html"
    user "root"
end
