DB_NAME="mercury"
INIT_SQL="/opt/src/init.sql"

until mysqladmin ping -u root --silent; do
    sleep 1
done

mysql -u root < "${INIT_SQL}"

echo "BASE DE DATOS INICIALIZADA"
