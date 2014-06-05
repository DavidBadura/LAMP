Vagrant.configure("2") do |config|
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.box = "ubuntu64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.network :forwarded_port, host: 8080, guest: 80
  #config.vm.network :forwarded_port, host: 135, guest: 135
  config.vm.network :forwarded_port, host: 136, guest: 136
  config.vm.network :forwarded_port, host: 137, guest: 137
  config.vm.network :forwarded_port, host: 138, guest: 138
  config.vm.network :forwarded_port, host: 139, guest: 139
  #config.vm.network :forwarded_port, host: 445, guest: 445

  config.vm.network "private_network", type: "dhcp"
  config.ssh.forward_agent = true
end