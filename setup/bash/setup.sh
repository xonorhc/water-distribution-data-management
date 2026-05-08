#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTENV_PATH="$SCRIPT_DIR/../../.env"

if [ -f "$DOTENV_PATH" ]; then
  source "$DOTENV_PATH"
else
  echo "Error: File .env not found in $DOTENV_PATH"
  exit 1
fi

DB_USER=${DB_USER:-postgres}
DB_PASSWORD=${DB_PASSWORD:-secret}
DB_NAME=${DB_NAME:-postgis}
DB_PORT=${DB_PORT:-5433}
DB_HOST=${DB_HOST:-localhost}
SRID=${SRID:-4326}

SCHEMA_DIR="$SCRIPT_DIR/../../db"

echo "Starting database setup..."

export PGPASSWORD=$DB_PASSWORD

echo "Creating database (if not exists)..."
createdb -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" "$DB_NAME" || true

echo "Applying schema..."
if [ -d "$SCHEMA_DIR" ]; then
  find "$SCHEMA_DIR" -type f -name "*.sql" | sort | while read -r file; do
    echo "Running $file"
    psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -f "$file" \
      --variable=SRID="$SRID"
  done
else
  echo "Error: Schema directory not found at $SCHEMA_DIR"
  exit 1
fi

echo "Database setup completed successfully!"
