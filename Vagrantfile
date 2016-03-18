# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "liatrio/centos7chefclient"

  config.berkshelf.enabled = true
  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "apache2-liatrio::default"
    chef.json = {
    }
  end

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provision "shell", inline: "firewall-cmd --permanent --add-port=80/tcp firewall-cmd --reload"

end
