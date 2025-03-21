FROM ubuntu

RUN apt update && apt install apache2 -y

COPY . /var/www/html

EXPOSE 80

CMD ["bash","-c","service apache2 start && tail -f 2>/dev/null"]
