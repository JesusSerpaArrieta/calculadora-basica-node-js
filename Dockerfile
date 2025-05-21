# Usamos imagen ligera de Node.js
FROM node:18-alpine

# Crear directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos package.json y package-lock.json para instalar dependencias
COPY package*.json ./

# Instalamos dependencias
RUN npm install

# Copiamos el resto del código
COPY . .

# Exponemos el puerto que usa la app (ajusta si es otro)
EXPOSE 2000

# Comando para arrancar la app
CMD ["node", "app.js"]
