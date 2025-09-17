# Projeto-docker-compose
Docker file, docker compose, nginx, html, css.


# Projeto Portfólio com Docker + Nginx

Este projeto é um exemplo simples de como usar **Docker** e **Docker Compose** para servir uma aplicação estática (HTML + CSS) com **Nginx**.

## Tecnologias utilizadas
- Docker
- Docker Compose
- Nginx

## Estrutura do projeto

ASCII art diagrams
https://gist.github.com/dsample/79a97f38bf956f37a0f99ace9df367b9

├── docker-compose.yml # Orquestração do container
├── Dockerfile # Configuração da imagem
├── html/ # Arquivos estáticos (frontend)
│ ├── index.html
│ └── style.css


## Como funciona

1. O **Dockerfile** cria uma imagem baseada no **Ubuntu**, instala o **Nginx** e copia os arquivos da pasta `html` para `/var/www/html` dentro do container.

2. O **Nginx** é configurado para servir o conteúdo estático da pasta `/var/www/html`.

3. O **docker-compose.yml** sobe o container e expõe a aplicação na porta `8080`.

---

## Como rodar o projeto

### 1. Clonar o repositório
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio

### 2. Construir a imagem e subir os containers
docker-compose up --build -d

### 3. Acessar no navegador
http://localhost:8080
