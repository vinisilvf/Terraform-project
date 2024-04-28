Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"
  config.vm.network "public_network", ip: "192.168.100.10"

    config.vm.provider "vmware" do |vb|
      vb.memory = "1024"
      vb.cpus= "2"
      vb.name= "HandsOnDEVOPS"
    end
  config.vm.boot_timeout = 1000
  config.vm.provision "shell", path: "script.sh"
end
