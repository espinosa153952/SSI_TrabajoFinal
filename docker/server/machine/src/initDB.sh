DB_HOST="localhost"
DB_PORT="3306"
DB_ROOT_USER="root"
DB_ROOT_PASSWORD="root"
DB_NAME="mercury"
INIT_SQL="./init.sql"

if [ ! -f "$INIT_SQL" ]; then
  echo "ERROR: No se encontró $INIT_SQL"
  exit 1
fi

echo "Creando la base de datos $DB_NAME..."
mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_ROOT_USER" -p"$DB_ROOT_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"

echo "Ejecutando $INIT_SQL en la base de datos $DB_NAME..."
mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_ROOT_USER" -p"$DB_ROOT_PASSWORD" "$DB_NAME" < "$INIT_SQL"

echo "¡Base de datos $DB_NAME inicializada correctamente!"
