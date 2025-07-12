#!/usr/bin/env bash

SCRIPTPATH="$(dirname "$0")"
source "$SCRIPTPATH"/variables.env

psql -U $PGUSER -h $PGHOST -p $PGPORT -d 'postgres' \
  -c "create database $PGDATABASE;"

psql -U $PGUSER -h $PGHOST -p $PGPORT -d $PGDATABASE \
  -c "create extension if not exists postgis;"

psql -U $PGUSER -h $PGHOST -p $PGPORT -d $PGDATABASE \
  -c "create schema if not exists $PGSCHEMA;"

Directories=(
  'data_types'
  'data_definition'
  'functions'
  'rule_system'
)

for i in ${Directories[@]}; do
  find "$SCRIPTPATH"/$i -type f -name "*.sql" -print0 | sort -z | xargs -0 -I{} \
    psql -U $PGUSER -h $PGHOST -p $PGPORT -d $PGDATABASE -b \
    --variable=PGSCHEMA=$PGSCHEMA \
    --variable=SRID=$SRID \
    --variable=MVSCHEMA='public' \
    -f "{}"
done
