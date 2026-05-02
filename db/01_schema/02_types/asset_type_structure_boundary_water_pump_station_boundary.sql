-- TABLE: asset_type_structure_boundary_water_pump_station_boundary
CREATE TABLE IF NOT EXISTS types.asset_type_structure_boundary_water_pump_station_boundary (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);
