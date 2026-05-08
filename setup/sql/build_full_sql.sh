#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTENV_PATH="$SCRIPT_DIR/../../.env"

if [ -f "$DOTENV_PATH" ]; then
  source "$DOTENV_PATH"
else
  echo "Warning: .env not found, using default values."
fi

SRID=${SRID:-4326}
SCHEMA_DIR="$SCRIPT_DIR/../../db"
OUTPUT_FILE="$SCRIPT_DIR/full_setup.sql"

echo "Generating $OUTPUT_FILE..."

echo "-- Auto-generated SQL setup file" >"$OUTPUT_FILE"
echo "-- Generated at $(date)" >>"$OUTPUT_FILE"
echo "-- SRID used: $SRID" >>"$OUTPUT_FILE"
echo "" >>"$OUTPUT_FILE"
echo "BEGIN;" >>"$OUTPUT_FILE"
echo "" >>"$OUTPUT_FILE"

if [ -d "$SCHEMA_DIR" ]; then
  find "$SCHEMA_DIR" -type f -name "*.sql" | sort | while read -r file; do
    echo "-- FILE: $(basename "$file")" >>"$OUTPUT_FILE"

    sed "s/:SRID/${SRID:-4326}/g" "$file" >>"$OUTPUT_FILE"

    echo -e "\n" >>"$OUTPUT_FILE"
  done
else
  echo "Error: Schema directory not found at $SCHEMA_DIR"
  exit 1
fi

echo "COMMIT;" >>"$OUTPUT_FILE"

echo "Done! File created at $OUTPUT_FILE"
