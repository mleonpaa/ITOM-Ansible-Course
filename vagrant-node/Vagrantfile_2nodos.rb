# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	#se define el bloque multimaquina
	config.vm.define "node-one" do |app|
		app.vm.box = "bento/ubuntu-16.04"
		app.vm.network "private_network", ip: "192.168.33.8"
		app.vm.hostname = "node-one"
		app.vm.provision "shell", path: "config.sh"
		config.vm.boot_timeout = 500
		app.vm.provider "virtualbox" do |v|
			v.memory = 256
			v.cpus = 1
		end
	end
	config.vm.define "node-two" do |app|
		app.vm.box = "bento/ubuntu-16.04"
		app.vm.network "private_network", ip: "192.168.33.9"
		app.vm.hostname = "node-two"
		app.vm.provision "shell", path: "config.sh"
		config.vm.boot_timeout = 500
		app.vm.provider "virtualbox" do |v|
			v.memory = 256
			v.cpus = 1
		end
	end
end
