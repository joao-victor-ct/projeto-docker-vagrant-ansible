Vagrant.configure("2") do |config|
  config.vm.box = "debian/bookworm64"

  config.vm.hostname = "joaovictor.pedrotx"

  config.vm.network "private_network", ip: "192.168.56.132"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.check_guest_additions = false
  end

  config.ssh.insert_key = false

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook_ansible.yml"
  end
end

