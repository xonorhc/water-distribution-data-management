#!/usr/bin/env bash

set -e

DB_USER=postgres
DB_PASSWORD=secret
DB_NAME=postgis
DB_PORT=5433
DB_HOST=localhost

SCHEMA_DIR="../../db"

echo "Starting database setup..."

echo "Creating database (if not exists)..."
createdb -h $DB_HOST -p $DB_PORT -U $DB_USER $DB_NAME || true

echo "Applying schema..."
find "$SCHEMA_DIR" -type f -name "*.sql" | sort | while read -r file; do
  echo "Running $file"
  psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -f "$file"
done

echo "Database setup completed successfully!"
