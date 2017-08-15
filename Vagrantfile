Vagrant.configure("2") do |config|
 config.ssh.insert_key = false

 config.vm.define "vagrant0" do |vagrant0|
 vagrant0.vm.box = "centos"
 vagrant0.vm.network :private_network, ip: "192.168.11.30"
 vagrant0.vm.network "forwarded_port",guest:80,host:8080
 vagrant0.vm.provider "virtualbox" do |v| 
 v.customize ["modifyvm", :id, "--memory", 1024] 
 vagrant0.vm.synced_folder 'share/', '/home/vagrant/share', :create => 'true', :mount_options => ["dmode=777","fmode=666"]
 end
 end

 config.vm.define "vagrant1" do |vagrant1|
 vagrant1.vm.box = "centos"
 vagrant1.vm.network :private_network, ip: "192.168.11.31"
 vagrant1.vm.network "forwarded_port",guest:80,host:8081
 vagrant1.vm.network "forwarded_port",guest:443,host:8444
 vagrant1.vm.provider "virtualbox" do |v| 
 v.customize ["modifyvm", :id, "--memory", 1024] 
 end
 end

end

