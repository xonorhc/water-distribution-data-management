-- TABLE: punctual_asset
CREATE TABLE IF NOT EXISTS watersystem.punctual_asset (
    latitude numeric(9, 7) GENERATED ALWAYS AS (ST_Y (ST_TRANSFORM (shape, 4326))) STORED,
    longitude numeric(10, 7) GENERATED ALWAYS AS (ST_X (ST_TRANSFORM (shape, 4326))) STORED,
    shape geometry(point, :SRID) NOT NULL,
    symbol_rotation smallint DEFAULT 0,
    CHECK (symbol_rotation BETWEEN 0 AND 359)
)
INHERITS (
    watersystem.asset
);

CREATE INDEX ON watersystem.punctual_asset USING gist (shape);

