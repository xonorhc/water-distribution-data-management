-- TABLE: linear_asset
CREATE TABLE IF NOT EXISTS watersystem.linear_asset (
    shape geometry(LINESTRINGZ, 4326),
    shape_length numeric GENERATED ALWAYS AS ((ST_LENGTH (shape))::numeric(8, 2)) STORED
)
INHERITS (
    watersystem.asset
);

CREATE INDEX ON watersystem.linear_asset USING gist (shape);

