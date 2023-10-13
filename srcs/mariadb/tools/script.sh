#!/bin/bash

sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start

echo    "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql -u root

echo    "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" | mysql -u root

echo    "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' " | mysql -u root

echo    "FLUSH PRIVILEGES;" | mysql -u root

echo    "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOTPWD';" | mysql -u root

kill    $(cat /var/run/mysqld/mysqld.pid)

mysqld_safe



# xinit startx openbox chrome 