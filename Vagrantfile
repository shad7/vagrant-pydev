# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  # Provision using shell to execute ansible because of windows issues
  config.vm.provision "shell" do |sh|
    sh.path = "provision.sh"
    sh.args = ["provision/vagrant.yml"]
  end

  config.vm.hostname = "local-dev"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    # provide a name for the vm
    vb.name = "trusty_dev_vm"

    # specify number of CPUs
    vb.cpus = 2

    # specify amount of memory
    vb.memory = 4096

    # customize the max CPU utillization on physical host (max 50%)
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]

  end

end
