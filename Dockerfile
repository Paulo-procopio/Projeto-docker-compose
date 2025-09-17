FROM ubuntu:20.04

LABEL maintainer="Paulo Procópio"

# apt-get update -> atualiza a lista de pacotes atualiza a lista de pacotes (saber quais versões estão disponíveis).
# apt-get upgrade -y -> atualiza os pacotes já instalados para as versões mais recentes.
# apt-get install -y nginx -> instala o nginx sem pedir confirmação (-y).
# rm -rf /var/lib/apt/lists/* -> apaga os arquivos temporários do apt, diminuindo o tamanho final da imagem Docker.

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copia os arquivos do site.
COPY html /var/www/html

# Copia a config personalizada do nginx.
COPY nginx.conf /etc/nginx/sites-available/default

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
