## Projeto Docker 2025

* Livro Indicado "Descomplicando o Docker"
* docker run -it ubuntu  "Exemplo de rodar o container"
* docker ps -a "Ver os container já executados"
* docker run -d nginx 
* docker run -d -p 80:80 nginx "Expondo a porta"
* docker stop + numero do ID do container

# 📦 App Node.js com Docker

Este projeto contém uma aplicação Node.js containerizada usando Docker. A aplicação é iniciada a partir do arquivo `app.js` e expõe a porta `3000`.

---

## 🛠️ Requisitos

- [Docker](https://www.docker.com/get-started) instalado

---

## 🚀 Como rodar o projeto
docker run -d -p 3000:3000 app_node

### 1. Clone o repositório

```bash
git clone https://github.com/isaiastech/docker-2025.git
cd docker-2025


