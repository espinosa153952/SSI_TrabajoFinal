apt update && apt install -y sudo passwd ssh mariadb-server && apt clean
sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf