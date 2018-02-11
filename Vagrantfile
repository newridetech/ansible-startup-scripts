# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "bento/ubuntu-16.04"

    config.vm.hostname = "test"

    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.network "private_network", ip: "192.168.33.10"

    config.vm.synced_folder ".", "/home/test", :mount_options => ["dmode=777", "fmode=666"]

    config.ssh.insert_key = false

end
