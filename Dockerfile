# FROM ubuntu 
# RUN apt update -y
# RUN apt install nginx -y
# # RUN cd /var/www/html
# # RUN echo "THIS IS TESTING NGINX SERVER" > /var/www/html/index.nginx-debian.html
# RUN mkdir -p /var/www/html/site1
# COPY index.html /var/www/html/site1/
# COPY site1.conf /etc/nginx/sites-enabled/site1.conf
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]

#wget run
# FROM ubuntu
# RUN apt update -y \
# && apt install default-jdk -y && apt install wget -y
# RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.67/bin/apache-tomcat-9.0.67.tar.gz
# RUN mkdir -p /opt/tomcat
# RUN tar xvzf apache-tomcat-9.0.67.tar.gz
# RUN mv apache-tomcat-9.0.67/ /opt/tomcat
# EXPOSE 8080

# CMD ["/opt/tomcat/apache-tomcat-9.0.67/bin/catalina.sh" , "run"]


#add 
FROM ubuntu

RUN apt update -y && apt install default-jdk -y 
#&& apt install wget -y
# RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.67/bin/apache-tomcat-9.0.67.tar.gz
# RUN tar xvzf apache-tomcat-9.0.67.tar.gz
# RUN mv apache-tomcat-9.0.67/ /opt/tomcat
RUN mkdir -p /opt/tomcat/

ADD apache-tomcat-9.0.67.tar.gz /opt/tomcat/
COPY ecomm /opt/tomcat/apache-tomcat-9.0.67/webapps/ROOT/

EXPOSE 8080

CMD ["/opt/tomcat/apache-tomcat-9.0.67/bin/catalina.sh" , "run"]