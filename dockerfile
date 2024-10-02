# Usamos la imagen base de Nginx
FROM nginx:latest

# Copiamos el archivo index.html al directorio de Nginx para servir contenido
COPY ./index.html /usr/share/nginx/html/index.html

# Exponemos el puerto 80 para que Nginx sirva el contenido
EXPOSE 80


