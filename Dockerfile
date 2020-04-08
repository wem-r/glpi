FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt update \
&& apt -y upgrade \
&& apt -y install \
apache2 \
php \
php-mysql \
php-ldap \
php-xmlrpc \
php-imap \
curl \
php-curl \
php-gd \
php-mbstring \
php-xml \
php-apcu-bc \
php-cas \
cron \
wget \
jq

#Copie et execution du script pour l'installation et l'initialisation de GLPI
COPY glpi.sh /opt/
RUN chmod +x /opt/glpi.sh
ENTRYPOINT ["/opt/glpi.sh"]

#Exposition des ports
EXPOSE 80 443
