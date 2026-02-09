# Define a versão da sintaxe do Vagrant
Vagrant.configure("2") do |config|

  # Define a imagem do sistema operacional da VM
  # Neste caso, Debian Bookworm 64 bits
  config.vm.box = "debian/bookworm64"

  # Define o nome (hostname) da máquina virtual
  config.vm.hostname = "joaovictor.pedrotx"

  # Cria uma rede privada com IP fixo
  # Permite acessar a VM pelo navegador usando esse IP
  config.vm.network "private_network", ip: "192.168.56.132"

  # Configurações específicas do VirtualBox
  config.vm.provider "virtualbox" do |vb|

    # Quantidade de memória RAM da VM (em MB)
    vb.memory = 1024

    # Desativa verificação automática de Guest Additions
    vb.check_guest_additions = false
  end

  # Impede que o Vagrant gere uma nova chave SSH
  # Usa a chave padrão para facilitar o acesso
  config.ssh.insert_key = false

  # Define que o Ansible será usado como provisionador
  config.vm.provision "ansible" do |ansible|

    # Indica qual playbook o Ansible deve executar
    ansible.playbook = "playbook_ansible.yml"
  end

end
