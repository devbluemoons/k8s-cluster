# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    WORKER_NODE_NUMBER = 3

    ####################
    # Add Master Nodes #
    ####################

    config.vm.define "m-k8s" do |cfg|

        cfg.vm.box = "ubuntu/focal64" # ubuntu-20.04 (iso)
        cfg.vm.provider "virtualbox" do |vb| 
            vb.name = "m-k8s"
            vb.cpus = 2
            vb.memory = 2048
        end
        cfg.vm.host_name = "m-k8s"
        cfg.vm.network "private_network", ip: "192.168.1.10"
        cfg.vm.network "forwarded_port", guest: 22, host: 60010, auto_correct: true, id: "ssh"
        cfg.vm.synced_folder "../data", "/vagrant", disabled: true
        cfg.vm.provision "shell", path: "config.sh", args: WORKER_NODE_NUMBER
        cfg.vm.provision "shell", path: "install_pkg.sh"
        cfg.vm.provision "shell", path: "master_node.sh"
    end

    ####################
    # Add Worker Nodes #
    ####################

    (1..WORKER_NODE_NUMBER).each do |i|
        
        config.vm.define "w#{i}" do |cfg|
            
            cfg.vm.box = "ubuntu/focal64"
            cfg.vm.provider "virtualbox" do |vb| 
                vb.name = "w#{i}"
                vb.cpus = 2
                vb.memory = 2048
            end
            cfg.vm.host_name = "w#{i}"
            cfg.vm.network "private_network", ip: "192.168.1.10#{i}"
            cfg.vm.network "forwarded_port", guest: 22, host: "6010#{i}", auto_correct: true, id: "ssh"
            cfg.vm.synced_folder "../data", "/vagrant", disabled: true
            cfg.vm.provision "shell", path: "config.sh", args: WORKER_NODE_NUMBER
            cfg.vm.provision "shell", path: "install_pkg.sh"
            cfg.vm.provision "shell", path: "work_nodes.sh"
        end
    end

end
