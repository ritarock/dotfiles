Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.44.55"
  config.vm.network "forwarded_port", guest: 8000, host: 12345
end
