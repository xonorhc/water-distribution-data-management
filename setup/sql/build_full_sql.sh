#!/usr/bin/env bash

set -e

OUTPUT_FILE="full_setup.sql"
SCHEMA_DIR="../../db"

echo "Generating $OUTPUT_FILE..."

>$OUTPUT_FILE

echo "-- Auto-generated SQL setup file" >>$OUTPUT_FILE
echo "-- Generated at $(date)" >>$OUTPUT_FILE
echo "" >>$OUTPUT_FILE

echo "BEGIN;" >>$OUTPUT_FILE
echo "" >>$OUTPUT_FILE

find "$SCHEMA_DIR" -type f -name "*.sql" | sort | while read -r file; do
  echo "-- FILE: $file" >>$OUTPUT_FILE
  cat "$file" >>$OUTPUT_FILE
  echo -e "\n" >>$OUTPUT_FILE
done

echo "COMMIT;" >>$OUTPUT_FILE

echo "Done! File created at setup/sql/$OUTPUT_FILE"
