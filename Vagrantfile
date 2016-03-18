# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # the base box is ubuntu 14.04 LTS
  config.vm.box = "ubuntu/trusty64"

  # no need to update
  config.vm.box_check_update = true

  # forward guest 80 to host 8080
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # Use 777 for the default mount folder
  config.vm.synced_folder ".", "/vagrant", \
    :disabled => false, \
    :mount_options  => ['dmode=777,fmode=777']

  config.vm.provider "virtualbox" do |vb|
     # Don't show the GUI unless you have some bug
     vb.gui = false
     # Customize the amount of memory on the VM:
     vb.memory = "1024"
     # Config the name
     vb.name = "at15-lnmp"
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end
