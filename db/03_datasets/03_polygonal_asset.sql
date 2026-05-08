-- TABLE: polygonal_asset
CREATE TABLE IF NOT EXISTS watersystem.polygonal_asset (
    latitude numeric(9, 7) GENERATED ALWAYS AS (ST_Y (ST_Centroid (ST_Transform (shape, 4326)))) STORED,
    longitude numeric(10, 7) GENERATED ALWAYS AS (ST_X (ST_Centroid (ST_Transform (shape, 4326)))) STORED,
    shape geometry(polygon, :SRID),
    shape_area numeric GENERATED ALWAYS AS (round(ST_Area (ST_Transform (shape, 4326)::geography)::numeric, 2)) STORED,
    shape_length numeric GENERATED ALWAYS AS (round(ST_Perimeter (ST_Transform (shape, 4326)::geography)::numeric, 2)) STORED
)
INHERITS (
    watersystem.asset
);

CREATE INDEX ON watersystem.polygonal_asset USING gist (shape);
CREATE INDEX ON watersystem.polygonal_asset (shape_length);
CREATE INDEX ON watersystem.polygonal_asset (shape_area);

