# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'bento/centos-7.2'

  config.berkshelf.enabled = true
  config.vm.provision 'chef_solo' do |chef|

    chef.version = '12.16.42'

    chef.add_recipe 'java'
    chef.add_recipe 'apache2-liatrio::default'
    chef.json = {
      'java' => {
        'jdk_version' => '8',
        'install_flavor' => 'openjdk'
      }
    }
  end

  config.vm.network :private_network, ip: '192.168.100.90'
  config.vm.network 'forwarded_port', guest: 80, host: 1080
  config.vm.network 'forwarded_port', guest: 443, host: 1443

  config.vm.provider :virtualbox do |v|
    v.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
  end
end
