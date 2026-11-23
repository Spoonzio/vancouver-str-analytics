-- Runs once, on first start with an empty volume, as POSTGRES_USER in POSTGRES_DB.
-- After editing, reset with: docker compose ... down -v

CREATE EXTENSION IF NOT EXISTS vector;

-- staging: raw files loaded as-is; dw: star schema
CREATE SCHEMA IF NOT EXISTS staging;
CREATE SCHEMA IF NOT EXISTS dw;

-- Metabase's own settings database. Name must match MB_DB_DBNAME in .env.
CREATE DATABASE metabase;
