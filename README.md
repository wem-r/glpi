# Docker glpi

To run: 

```bash
docker run --name mysql -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=glpidb -e MYSQL_USER=glpi_user -e MYSQL_PASSWORD=glpi --volume /var/lib/mysql:/var/lib/mysql -d mysql:5.7.23
```

```bash
docker run --name glpi --link mysql:mysql --volume /var/www/html/glpi:/var/www/html/glpi -p 80:80 -d wemr/glpi
```
## Connexion info during the instalation process

Server SQL (MariaDB or MySQL): mysql

User SQL: glpi_user

Password SQL: glpi
