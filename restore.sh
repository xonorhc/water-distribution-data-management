#!/usr/bin/env bash

DATABASENAME=${1:-'sistema_agua'}

echo "Restoring data to database $DATABASENAME"

createdb $DATABASENAME
psql -h localhost -p 5432 -U postgres -d $DATABASENAME -f src/create_tables.sql
psql -h localhost -p 5432 -U postgres -d $DATABASENAME -f src/insert_data.sql
