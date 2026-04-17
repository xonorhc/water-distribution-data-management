#!/usr/bin/env bash

set -e

# TODO: Configurações (pode externalizar depois para .env)
DB_HOST="localhost"
DB_PORT="5436"
DB_NAME="watersystem"
DB_USER="postgres"

SCHEMA_DIR="../../db/init"
SEED_DIR="../../db/seeds"

echo "Starting database setup..."

echo "Creating database (if not exists)..."
createdb -h $DB_HOST -p $DB_PORT -U $DB_USER $DB_NAME || true

# Executar schema
echo "Applying schema..."
for file in $(ls $SCHEMA_DIR/*.sql | sort); do
  echo "Running $file"
  psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -f "$file"
done

# Executar seeds (opcional)
if [ -d "$SEED_DIR" ]; then
  echo "Applying seeds..."
  for file in $(ls $SEED_DIR/*.sql | sort); do
    echo "Running $file"
    psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -f "$file"
  done
fi

echo "Database setup completed successfully!"
