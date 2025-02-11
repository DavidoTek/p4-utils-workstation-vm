# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2204"
  config.vm.box_version = "4.3.12"  # version locked to prevent unexpected errors

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "8192"
    vb.cpus = 4
  end

  config.vm.synced_folder "shared", "/shared", disabled: false

  config.vm.provision "shell", path: "src/scripts/install-xfce4-sddm.sh", privileged: true
  config.vm.provision "shell", path: "src/scripts/install-virtualbox-gu.sh", privileged: true
  config.vm.provision "shell", path: "src/scripts/install-p4-dev.sh", privileged: false
  config.vm.provision "shell", path: "src/scripts/install-picoquic.sh", privileged: false
  config.vm.provision "shell", path: "src/scripts/install-vscode.sh", privileged: false
  config.vm.provision "shell", path: "src/scripts/stuff.sh", privileged: false

  config.vm.provision "file", source: "src/assets/shared_folder.desktop", destination: "/home/vagrant/Desktop/shared_folder.desktop"

  config.trigger.after [:provision] do |t|
    t.name = "Reboot after provisioning"
    t.run = { :inline => "vagrant reload" }
  end  
end
