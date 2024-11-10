# Usa la imagen oficial de Node.js como base
FROM node:18

# Configura el directorio de trabajo
WORKDIR /usr/src/app

# Copia el package.json y package-lock.json (si existe)
COPY package*.json ./

# Instala las dependencias de Node.js (Express en este caso)
RUN npm install

# Copia los archivos de la aplicación al contenedor
COPY . .

# Expone el puerto 3000 (donde se ejecutará el servidor)
EXPOSE 3000

# Ejecuta el servidor Node.js
CMD ["node", "server.js"]
