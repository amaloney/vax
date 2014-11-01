# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # The box to install.
  config.vm.box = "ubuntu/trusty64"
  # Fix the ``default: stdin: is not a tty'' error.
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  # Provision the machine.
  config.vm.provision :shell, path: "provisioner.sh"
  # Add port forwarding.
  config.vm.network :forwarded_port, host: 4567, guest: 80
  # Allow forwarding to host X11 windowing system.
  config.ssh.forward_x11 = true
  # Allow ssh forwarding for GitHub cloning.
  config.ssh.forward_agent = true
  # Set the timezone to the host time.
  require 'time'
  timezone = 'Etc/GMT' + ((Time.zone_offset(Time.now.zone)/60)/60).to_s
  config.vm.provision :shell, :inline =>
    "if [ $(grep -c UTC /etc/timezone) -gt 0 ]; then
      echo \"#{timezone}\" |\
      sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata;
    fi"
  # Change the name of the box.
  config.vm.provider "virtualbox" do |v|
    v.name = "vax"
  end
  # Set the memory and number of CPUs to use.
  config.vm.provider "virtualbox" do |v|
    v.memory = 8192
    v.cpus = 2
  end





  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  #
  #   # Use VBoxManage to customize the VM. For example to change memory:
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # end
end
