# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :dbServer do |dbServer|
    dbServer.vm.box = "bento/ubuntu-22.04"
    dbServer.vm.network :private_network, ip: "192.168.60.8"
    dbServer.vm.provision "file", source: "init.sql", destination: "/home/vagrant/init.sql"
    dbServer.vm.provision "shell", path: "init_db.sh"
    dbServer.vm.hostname = "dbServer"
  end
  config.vm.define :webServer1 do |webServer1|
    webServer1.vm.box = "bento/ubuntu-22.04"
    webServer1.vm.network :private_network, ip: "192.168.60.2"
    webServer1.vm.provision "file", source: "webserver-conf", destination: "/home/vagrant/webserver-conf"
    webServer1.vm.provision "shell", path: "init_webserver.sh"
    webServer1.vm.hostname = "webServer1"
  end
  config.vm.define :webServer2 do |webServer2|
    webServer2.vm.box = "bento/ubuntu-22.04"
    webServer2.vm.network :private_network, ip: "192.168.60.3"
    webServer2.vm.provision "file", source: "webserver-conf", destination: "/home/vagrant/webserver-conf"
    webServer2.vm.provision "shell", path: "init_webserver.sh"
    webServer2.vm.hostname = "webServer2"
  end
  config.vm.define :webServer3 do |webServer3|
    webServer3.vm.box = "bento/ubuntu-22.04"
    webServer3.vm.network :private_network, ip: "192.168.60.4"
    webServer3.vm.provision "file", source: "webserver-conf", destination: "/home/vagrant/webserver-conf"
    webServer3.vm.provision "shell", path: "init_webserver.sh"
    webServer3.vm.hostname = "webServer3"
  end
  # config.vm.define :webServer4 do |webServer4|
  #   webServer4.vm.box = "bento/ubuntu-22.04"
  #   webServer4.vm.network :private_network, ip: "192.168.60.5"
  #   webServer4.vm.provision "file", source: "webserver-conf", destination: "/home/vagrant/webserver-conf"
  #   webServer4.vm.provision "shell", path: "init_webserver.sh"
  #   webServer4.vm.hostname = "webServer4"
  # end
  # config.vm.define :webServer5 do |webServer5|
  #   webServer5.vm.box = "bento/ubuntu-22.04"
  #   webServer5.vm.network :private_network, ip: "192.168.60.6"
  #   webServer5.vm.provision "file", source: "webserver-conf", destination: "/home/vagrant/webserver-conf"
  #   webServer5.vm.provision "shell", path: "init_webserver.sh"
  #   webServer5.vm.hostname = "webServer5"
  # end
  config.vm.define :loadBalancer do |loadBalancer|
    loadBalancer.vm.box = "bento/ubuntu-22.04"
    loadBalancer.vm.network :private_network, ip: "192.168.60.7"
    loadBalancer.vm.provision "file", source: "load-balancer-conf", destination: "/home/vagrant/load-balancer-conf", run: "always"
    loadBalancer.vm.provision "shell", path: "init_lb.sh", run: "always"
    loadBalancer.vm.hostname = "loadBalancer"
  end
end
