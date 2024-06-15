# Usar a imagem oficial do Node.js como base
FROM node:16

# Criar diretório de trabalho na imagem
WORKDIR /app

# Copiar package.json e package-lock.json
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o restante da aplicação
COPY . .

# Expor a porta que a aplicação irá rodar
EXPOSE 8000

# Comando para rodar a aplicação
CMD ["node", "app.js"]

