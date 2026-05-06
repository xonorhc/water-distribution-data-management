-- TABLE: punctual_asset
CREATE TABLE IF NOT EXISTS watersystem.punctual_asset (
    shape geometry(POINTZ, 4326),
    symbol_rotation smallint DEFAULT 0,
    CHECK (symbol_rotation BETWEEN 0 AND 359)
)
INHERITS (
    watersystem.asset
);

CREATE INDEX ON watersystem.punctual_asset USING gist (shape);

