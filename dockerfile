FROM ubuntu
RUN apt update
RUN apt install apache2 -y
#RUN apt install –y apache2-utils
RUN apt clean
EXPOSE 80
COPY ./index.html/ /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]
