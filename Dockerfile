# Usa uma imagem oficial do Node.js como base
FROM node:23.11.1-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de dependências (corrigido o nome do arquivo)
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia o restante dos arquivos do projeto para o container
COPY . .

# Expõe a porta 3000
EXPOSE 3000

# Comando para iniciar a aplicação (corrigido o comando e o nome)
CMD ["node", "app.js"]
