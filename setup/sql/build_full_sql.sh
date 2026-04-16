#!/usr/bin/env bash

set -e

OUTPUT_FILE="full_setup.sql"
SCHEMA_DIR="../../db/schema"
SEED_DIR="../../db/seeds"

echo "Generating $OUTPUT_FILE..."

# Limpa arquivo anterior
> $OUTPUT_FILE

echo "-- Auto-generated SQL setup file" >> $OUTPUT_FILE
echo "-- Generated at $(date)" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Adiciona schema
for file in $(ls $SCHEMA_DIR/*.sql | sort); do
  echo "-- FILE: $file" >> $OUTPUT_FILE
  cat "$file" >> $OUTPUT_FILE
  echo -e "\n\n" >> $OUTPUT_FILE
done

# Adiciona seeds (opcional)
if [ -d "$SEED_DIR" ]; then
  for file in $(ls $SEED_DIR/*.sql | sort); do
    echo "-- SEED FILE: $file" >> $OUTPUT_FILE
    cat "$file" >> $OUTPUT_FILE
    echo -e "\n\n" >> $OUTPUT_FILE
  done
fi

echo "Done! File created at setup/sql/$OUTPUT_FILE"
