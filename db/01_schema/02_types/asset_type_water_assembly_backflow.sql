-- TABLE: asset_type_water_assembly_backflow
CREATE TABLE IF NOT EXISTS types.asset_type_water_assembly_backflow (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);
