# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

 config.vm.define "master" do |master|
   master.vm.box = "bento/ubuntu-20.04"
   master.vm.hostname = "master"
   master.vm.network "private_network", ip: "192.168.33.20" 
   master.vm.provider "virtualbox" do |vb|
     vb.memory = 2048
     vb.cpus = 2
   end
 

   master.vm.provision "shell", inline: <<-SHELL
     
     sudo apt install curl -y
     mkdir /etc/apt/keyrings

     sudo curl -fsSL -o /etc/apt/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/salt/py3/ubuntu/20.04/amd64/latest/salt-archive-keyring.gpg
     echo "deb [signed-by=/etc/apt/keyrings/salt-archive-keyring.gpg arch=amd64] https://repo.saltproject.io/salt/py3/ubuntu/20.04/amd64/latest focal main" | sudo tee /etc/apt/sources.list.d/salt.list 
     apt-get update
     apt-get install salt-master -y 
     apt-get install salt-ssh -y
     apt-get install salt-api -y

     echo "Restart salt master"
     sudo systemctl restart salt-master.service

     echo "Add minion IP to hosts"
     echo "192.168.33.21   minion" >> /etc/hosts

   SHELL
 end
  
 config.vm.define "minion" do |worker|
   worker.vm.box = "bento/ubuntu-20.04"
   worker.vm.hostname = "minion"
   worker.vm.network "private_network", ip: "192.168.33.21"
   worker.vm.provider "virtualbox" do |vb|
     vb.cpus = 2
     vb.memory = 3072
   end

   worker.vm.provision "shell", inline: <<-SHELL

     sudo apt install curl -y       
     mkdir /etc/apt/keyrings

     sudo curl -fsSL -o /etc/apt/keyrings/salt-archive-keyring.gpg https://repo.saltproject.io/salt/py3/ubuntu/20.04/amd64/latest/salt-archive-keyring.gpg
     echo "deb [signed-by=/etc/apt/keyrings/salt-archive-keyring.gpg arch=amd64] https://repo.saltproject.io/salt/py3/ubuntu/20.04/amd64/latest focal main" | sudo tee /etc/apt/sources.list.d/salt.list
     apt-get update
     apt-get install salt-minion -y
     apt-get install salt-ssh -y
     apt-get install salt-api -y
     
     echo "Restart salt minion"
     sudo systemctl restart salt-minion.service
     
     echo "Add salt IP to hosts"
     echo "192.168.33.20   salt" >> /etc/hosts
     echo "192.168.33.20   salt-master" >> /etc/hosts
     
  SHELL
 end

end
