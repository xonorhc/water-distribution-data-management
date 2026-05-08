-- TABLE: linear_asset
CREATE TABLE IF NOT EXISTS watersystem.linear_asset (
    latitude numeric(9, 7) GENERATED ALWAYS AS (ST_Y (ST_POINTONSURFACE (ST_TRANSFORM (shape, 4326)))) STORED,
    longitude numeric(10, 7) GENERATED ALWAYS AS (ST_X (ST_POINTONSURFACE (ST_TRANSFORM (shape, 4326)))) STORED,
    shape geometry(LINESTRING, :SRID),
    shape_length numeric GENERATED ALWAYS AS (round(ST_LENGTH (ST_TRANSFORM (shape, 4326)::geography)::numeric, 2)) STORED
)
INHERITS (
    watersystem.asset
);

CREATE INDEX ON watersystem.linear_asset USING gist (shape);
CREATE INDEX ON watersystem.linear_asset (shape_length);

