FROM ubuntu:22.04
RUN  apt-get update -y &&  apt-get install apache2 -y 
WORKDIR /app
COPY . /var/www/html/
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"] 

