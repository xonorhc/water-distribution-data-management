-- TABLE: polygonal_asset
CREATE TABLE IF NOT EXISTS watersystem.polygonal_asset (
    shape geometry(POLYGONZ, 4326),
    shape_area numeric GENERATED ALWAYS AS ((ST_AREA (shape))::numeric(8, 2)) STORED,
    shape_length numeric GENERATED ALWAYS AS ((ST_PERIMETER (shape))::numeric(8, 2)) STORED
)
INHERITS (
    watersystem.asset
);

CREATE INDEX ON watersystem.polygonal_asset USING gist (shape);
