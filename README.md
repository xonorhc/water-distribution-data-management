# Database Project - Postgres/PostGIS

## Overview

This project contains the data model and database structure for a PostgreSQL/PostGIS database.

It includes:

- Logical and conceptual data models
- SQL scripts for schema creation
- Multiple setup methods (Docker, Bash, and raw SQL)

---

## Project Structure

```
.
├── db/
│   ├── schema/        # Core database structure (source of truth)
│   ├── seeds/         # Initial or sample data
│   └── migrations/    # Incremental schema changes
│
├── setup/
│   ├── docker/        # Docker-based setup
│   ├── bash/          # Bash script setup
│   └── sql/           # Single SQL file setup
│
├── docs/              # Data modeling documentation
└── README.md
```

---

## Database Schema

All database structure is defined in:

```
db/
```

This includes:

- Extensions (PostGIS)
- Schemas
- Tables
- Indexes
- Functions

These scripts are the **single source of truth** and are reused across all setup methods.

---

## Setup Methods

You can create the database using one of the following approaches:

---

### 1. Docker

Requirements:

- Docker
- Docker Compose

Steps:

```bash
cd setup/docker
docker-compose up -d
```

This will:

- Start a PostgreSQL/PostGIS container
- Automatically execute all schema scripts

---

### 2. Bash Script

Requirements:

- PostgreSQL client (`psql`)

Steps:

```bash
cd setup/bash
chmod +x setup.sh
./setup.sh
```

This script will:

- Connect to your database
- Execute all SQL files from `db/schema`

---

### 3. Raw SQL

You can also run a single SQL file:

```
setup/sql/full_setup.sql
```

Use any database client (pgAdmin, DBeaver, etc.) to execute it.

---

## Seeding Data

Optional seed data is available in:

```
db/seeds/
```

---

## Documentation

- Conceptual model: `docs/conceptual/`
- Logical model: `docs/logical/`

---

## Naming Conventions

- Containers: `postgis_project`
- Volumes: `pgdata_project`
- Schemas: `project`, `domains`, etc.

---

## Notes

- Scripts are executed in alphabetical order
- Avoid modifying files in `db/` directly after deployment
- Use `migrations/` for changes in production environments

---

## Future Improvements

- Add migration tool (Flyway / Liquibase)
- Automate SQL bundling
- CI/CD integration

---
