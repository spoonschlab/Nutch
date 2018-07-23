NODE_COUNT = 2


Vagrant.configure("2") do |config|  
  
  config.vm.box = "centos/7"
  config.vm.provision "shell", path: "bootstrap-common.sh"
  
  config.vm.define "master", primary: true do |subconfig|
	subconfig.vm.hostname = "master"
	subconfig.vm.network "private_network", ip: "10.0.0.10"
	subconfig.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
	subconfig.vm.provision "shell", path: "bootstrap-master.sh"
  end
  
  (1..NODE_COUNT).each do |i|
    config.vm.define "node#{i}" do |subconfig|
      subconfig.vm.hostname = "node#{i}"
	  subconfig.vm.network "private_network", ip: "10.0.0.#{i+10}"
    end
  end	      
end