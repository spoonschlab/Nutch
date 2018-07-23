NODE_COUNT = 1


Vagrant.configure("2") do |config|  
    
  
  config.vm.define "master", primary: true do |master|
    master.vm.box = "centos/7"
	master.vm.hostname = "master"
	master.vm.network "private_network", ip: "10.0.0.10"	
	master.vm.provision "shell", path: "bootstrap-master.sh"
  end
  
  
  (1..NODE_COUNT).each do |i|
    config.vm.define "node#{i}" do |subconfig|
	  subconfig.vm.box = "centos/7"
      subconfig.vm.hostname = "node#{i}"
	  subconfig.vm.network "private_network", ip: "10.0.0.#{i+10}"
    end
  end	      
end