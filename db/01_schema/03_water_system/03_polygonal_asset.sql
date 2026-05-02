-- TABLE: polygonal_asset
CREATE TABLE IF NOT EXISTS water_system.polygonal_asset (
    shape geometry(POLYGONZ, 4326),
    shape_area numeric GENERATED ALWAYS AS ((ST_AREA (shape))::numeric(8, 2)) STORED,
    shape_length numeric GENERATED ALWAYS AS ((ST_PERIMETER (shape))::numeric(8, 2)) STORED
)
INHERITS (
    water_system.asset
);

