# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "precise64"
  config.vm.network :private_network, ip: "172.16.0.0"

  config.vm.provider "virtualbox" do |vbox|
    vbox.name = "MongoDB"
  end

  config.vm.provider "vmware_fusion" do |v|
    v.vmx["displayName"] = "MongoDB"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file  = "default.pp"
    #puppet.options = "--verbose"
  end

end
