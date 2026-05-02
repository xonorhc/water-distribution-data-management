#!/bin/bash
set -e

run_sql_recursive() {
  local search_path=$1

  find "$search_path" -name "*.sql" | sort | while read -r file; do
    psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f "$file"
  done
}

run_sql_recursive "/docker-entrypoint-initdb.d/00_extensions"

run_sql_recursive "/docker-entrypoint-initdb.d/01_schema"

run_sql_recursive "/docker-entrypoint-initdb.d/02_functions"

run_sql_recursive "/docker-entrypoint-initdb.d/03_seeds"

if [ -d "/docker-entrypoint-initdb.d/04_migrations" ]; then
  run_sql_recursive "/docker-entrypoint-initdb.d/04_migrations"
fi
