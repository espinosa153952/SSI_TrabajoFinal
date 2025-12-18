INIT_SQL="/opt/src/init.sql"

until mysqladmin ping -h 127.0.0.1 -u root --silent; do
    sleep 1
done

mysql -u root < "$INIT_SQL"

echo "BASE DE DATOS INICIALIZADA"