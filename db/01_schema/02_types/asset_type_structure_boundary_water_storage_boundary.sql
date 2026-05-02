-- TABLE: asset_type_structure_boundary_water_storage_boundary
CREATE TABLE IF NOT EXISTS types.asset_type_structure_boundary_water_storage_boundary (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);
