-- TABLE: water_storage_boundary
CREATE TABLE IF NOT EXISTS water_system.water_storage_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Storage Boundary',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_structure_boundary_water_storage_boundary (code)
)
INHERITS (
    water_system.polygonal_asset
);

