-- TABLE: water_supply_boundary
CREATE TABLE IF NOT EXISTS water_system.water_supply_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Supply Boundary',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_structure_boundary_water_supply_boundary (code)
)
INHERITS (
    water_system.polygonal_asset
);

