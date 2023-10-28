FROM ubuntu
MAINTAINER H01y6
RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/* && mkdir -p /var/lib/apache/runtime && mkdir /var/run/apache2

ENV APACHE_RUN_USER=www-data
ENV APACHE_RUN_GROUP=www-data
ENV APACHE_RUN_DIR /var/lib/apache/runtime
ENV APACHE_LOG_DIR=/var/log/apache2

EXPOSE 8080

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
