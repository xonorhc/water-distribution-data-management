-- TABLE: water_supply_boundary
CREATE TABLE IF NOT EXISTS watersystem.water_supply_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Supply Boundary',
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_structure_boundary_water_supply_boundary (code)
)
INHERITS (
    watersystem.polygonal_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.water_supply_boundary (shape_area);
CREATE INDEX ON watersystem.water_supply_boundary (shape_length);
CREATE INDEX ON watersystem.water_supply_boundary USING gist (shape);

