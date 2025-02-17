FROM nginx:latest
RUN apt update && apt-get install -y nginx
COPY index.html /var/www/html/index.html
EXPOSE 81
CMD ["nginx", "-g", "daemon off;"]

