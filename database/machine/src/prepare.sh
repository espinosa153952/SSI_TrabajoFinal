apt update && apt install -y mariadb-server && apt clean
sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
FLAG=`cat /opt/src/db_flag.txt`
echo "INSERT INTO facts (fact) VALUES ('$FLAG');" >> "/opt/src/init.sql"