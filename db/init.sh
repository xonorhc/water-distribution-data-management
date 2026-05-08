#!/bin/bash
set -e

run_sql_recursive() {
  local search_path=$1

  find "$search_path" -name "*.sql" | sort | while read -r file; do
    psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f "$file" \
      --variable=SRID=$SRID

  done
}

run_sql_recursive "/docker-entrypoint-initdb.d/00_extensions"
run_sql_recursive "/docker-entrypoint-initdb.d/01_schemas"
run_sql_recursive "/docker-entrypoint-initdb.d/02_domains"
run_sql_recursive "/docker-entrypoint-initdb.d/03_datasets"
run_sql_recursive "/docker-entrypoint-initdb.d/04_constraints"
run_sql_recursive "/docker-entrypoint-initdb.d/05_functions"
run_sql_recursive "/docker-entrypoint-initdb.d/06_seeds"

if [ -d "/docker-entrypoint-initdb.d/07_migrations" ]; then
  run_sql_recursive "/docker-entrypoint-initdb.d/07_migrations"
fi
