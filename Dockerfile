FROM ubuntu 
RUN apt update -y
RUN apt install nginx -y
RUN mkdir -p /var/www/html/site1
COPY index.html /var/www/html/site1/
COPY site1.conf /etc/nginx/sites-enabled/site1.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
