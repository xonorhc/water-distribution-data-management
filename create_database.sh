#!/usr/bin/env bash

SCRIPTPATH="$(dirname "$0")"

PGHOST=localhost
PGPORT=5432
PGUSER=postgres
PGPASSWORD=postgres
PGDATABASE=water_system

psql -U $PGUSER -h $PGHOST -p $PGPORT -d 'postgres' \
  -c "CREATE DATABASE $PGDATABASE;"

psql -U $PGUSER -h $PGHOST -p $PGPORT -d $PGDATABASE \
  -c "CREATE EXTENSION IF NOT EXISTS postgis;"

Directories=(
  'domains'
  'datasets'
)

for i in ${Directories[@]}; do
  find "$SCRIPTPATH"/$i -type f -name "*.sql" -print0 | sort -z | xargs -0 -I{} \
    psql -U $PGUSER -h $PGHOST -p $PGPORT -d $PGDATABASE -b -f "{}"
done
