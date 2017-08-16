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

end

