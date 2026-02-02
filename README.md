# Projeto Docker com Vagrant e Ansible

## Disciplina
Administração de Sistemas Abertos – IFPB  
Professor: Leonidas Lima  
Período: 2025.2  

## Integrantes
- João Victor Coelho Trigueiro
- Pedro Henrique Cardoso Texeira de Paula

---

## 📌 Descrição do Projeto
Este projeto tem como objetivo implementar o provisionamento automático de uma infraestrutura de servidores utilizando os conceitos de **Infraestrutura como Código (IaC)**. Para isso, foram utilizadas as ferramentas **Vagrant**, **Ansible** e **Docker**, permitindo a criação, configuração e execução de uma aplicação WordPress de forma totalmente automatizada.

---

## 🛠️ Tecnologias Utilizadas
- **Vagrant**: criação e gerenciamento da máquina virtual
- **VirtualBox**: provider de virtualização
- **Ansible**: automação da configuração do sistema operacional
- **Docker**: criação e execução de containers
- **Docker Compose**: orquestração dos containers
- **Nginx**: proxy com balanceamento de carga em camada 4
- **WordPress**: aplicação web
- **MySQL**: banco de dados

---

## 🧱 Arquitetura do Projeto

O projeto é composto por três containers Docker, todos conectados à mesma rede interna:

- **webproxy**  
  Container baseado em uma imagem personalizada do Nginx, responsável por receber as requisições externas na porta 8080 e encaminhá-las para o servidor web interno.

- **webserver**  
  Container utilizando a imagem oficial do WordPress.

- **database**  
  Container utilizando a imagem oficial do MySQL, responsável pelo armazenamento dos dados da aplicação.

Apenas o container **webproxy** é exposto externamente, garantindo melhor organização e segurança da infraestrutura.

---

## 🗂️ Estrutura dos Arquivos
├── Vagrantfile
├── playbook_ansible.yml
├── docker-compose.yml
├── Dockerfile
├── nginx.conf
└── .gitignore

---

## ⚙️ Funcionamento do Provisionamento

1. O **Vagrant** cria uma máquina virtual Debian Bookworm no VirtualBox, configurando:
   - IP fixo na rede privada
   - Hostname personalizado
   - Memória RAM definida
   - Execução automática do Ansible

2. O **Ansible** realiza:
   - Atualização do sistema operacional
   - Instalação do Docker e Docker Compose
   - Criação do diretório da aplicação
   - Execução do Docker Compose

3. O **Docker Compose**:
   - Cria os containers
   - Define redes e volumes persistentes
   - Inicializa a aplicação WordPress

---

## ▶️ Como Executar o Projeto

### Pré-requisitos
- VirtualBox
- Vagrant
- Git

### Passos para execução
Clone o repositório:

```bash
git clone https://github.com/joao-victor-ct/projeto-docker-vagrant-ansible.git
cd projeto-docker-vagrant-ansible

Execute o provisionamento:
```bash
vagrant up

Após a finalização, acesse no navegador:
```bash
http://192.168.56.132:8080

✅ Resultado Esperado

Ao acessar a URL, será exibida a tela de instalação/configuração do WordPress, indicando que toda a infraestrutura foi provisionada e configurada corretamente.

📚 Conceitos Aplicados

- Infraestrutura como Código (IaC)
- Provisionamento automatizado
- Containers e virtualização
- Automação de configuração
- Isolamento de serviços
- Persistência de dados com volumes Docker

📌 Observações Finais

Todo o projeto foi desenvolvido de forma a atender integralmente o escopo proposto na disciplina, utilizando boas práticas de automação e versionamento de código.

