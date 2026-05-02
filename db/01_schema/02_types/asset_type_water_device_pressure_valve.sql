-- TABLE: asset_type_water_device_pressure_valve
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_pressure_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

