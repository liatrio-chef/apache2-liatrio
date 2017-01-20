# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version '1.8.4'

[
  { name: 'vagrant-berkshelf', version: '>= 5.0.0' }
].each do |plugin|
  unless Vagrant.has_plugin?(plugin[:name], plugin[:version])
    raise "#{plugin[:name]} #{plugin[:version]} is required. " \
          "Please run `vagrant plugin install #{plugin[:name]}`"
  end
end

# Execute these shell commands outside of Bundler environment
Bundler.with_clean_env do
  # Require ChefDK version 0.16.28
  chefdkversion = `chef -v 2>/dev/null | head -n 1 |
                   awk -F' ' '{print $5}' | tr -d '\n'`
  unless chefdkversion.eql?'0.16.28'
    raise "Chef Development Kit Version 0.16.28 is required.\n" \
          'Please change to version 0.16.28.'
  end
  # Require VirtualBox version 5.0.26
  virtualboxversion = `vboxmanage --version |
                       awk -F'r' '{print $1}' | tr -d '\n'`
  unless virtualboxversion.eql?'5.0.26'
    raise "VirtualBox Version 5.0.26 is required.\n" \
          'Please change to version 5.0.26.'
  end
end

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
