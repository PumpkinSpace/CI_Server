# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Vagrant box
  config.vm.box = "ubuntu/trusty64"

  # Create a forwarded port mapping
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # Allows host-only access to the machine using a specific IP.
  config.vm.network "private_network", ip: "192.168.99.1"

  # VirtualBox specific configuration.
  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "4096"
  end

  # Provision with shell
  config.vm.provision "shell", path: "init.sh" 
end
