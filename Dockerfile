# Usa a imagem oficial mais recente do Nginx como base
FROM nginx:latest

# Atualiza os pacotes e instala ferramentas básicas
# iputils-ping -> permite testar conectividade
# curl -> permite fazer requisições HTTP
RUN apt-get update && \
    apt-get install -y iputils-ping curl && \
    rm -rf /var/lib/apt/lists/*

# Copia o arquivo de configuração do Nginx
# Do projeto para dentro do container
COPY nginx.conf /etc/nginx/nginx.conf

# Informa que o container utilizará a porta 8080
EXPOSE 8080
