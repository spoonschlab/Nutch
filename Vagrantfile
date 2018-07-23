
Vagrant.configure("2") do |config|

  config.vm.define "alpha" do |alpha|
    alpha.vm.box = "centos/7"	
	alpha.vm.hostname = "alpha"
	alpha.vm.network "private_network", ip: "192.168.0.10"
	alpha.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
	alpha.vm.provision :shell, path: "bootstrap-alpha.sh"
  end

  config.vm.define "bravo" do |bravo|
    bravo.vm.box = "centos/7"
	bravo.vm.hostname = "bravo"
	bravo.vm.network "private_network", ip: "192.168.0.11"
  end

  
  config.vm.provision "shell", inline: <<-SHELL
    touch amjad.txt
  SHELL
  

  # config.vm.box_check_update = false
  # config.vm.network "forwarded_port", guest: 80, host: 8080	 
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"
  # config.vm.synced_folder "../data", "/vagrant_data"

  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
