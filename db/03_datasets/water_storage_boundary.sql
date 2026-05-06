-- TABLE: water_storage_boundary
CREATE TABLE IF NOT EXISTS watersystem.water_storage_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Storage Boundary',
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_structure_boundary_water_storage_boundary (code)
)
INHERITS (
    watersystem.polygonal_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.water_storage_boundary (shape_area);
CREATE INDEX ON watersystem.water_storage_boundary (shape_length);
CREATE INDEX ON watersystem.water_storage_boundary USING gist (shape);

