Vagrant.configure(2) do |config|
  config.vm.provision "shell", path: "bootstrap.sh"

# Kubernetes Master
  config.vm.define "master01" do |master|
    master.vm.box = "bento/ubuntu-18.04"
    master.vm.hostname = "master01.example.com"
    master.vm.network "private_network", ip: "112.198.81.100"
    master.vm.provision "shell", path: "bootstrap_master.sh"
    master.vm.provider "virtualbox" do |vm|
      vm.memory = 2048
      vm.cpus = 2
    end
  end

# Kubernetes Nodes
  NodeCount = 2
  (1..NodeCount).each do |i|
    config.vm.define "node0#{i}" do |node|
      node.vm.box = "bento/ubuntu-18.04"
      node.vm.hostname = "node0#{i}.example.com"
      node.vm.network "private_network", ip: "112.198.81.10#{i}"
      node.vm.provision "shell", path: "bootstrap_node.sh"
    end
  end

end
