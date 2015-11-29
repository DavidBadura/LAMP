Vagrant.configure("2") do |config|
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.box = "ubuntu64"

  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/wily/current/wily-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.network "private_network", ip: "192.168.13.37"

  config.ssh.password = "vagrant"

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 3001, host: 3001

  for i in 64000..64010
    config.vm.network :forwarded_port, guest: i, host: i
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end
end
