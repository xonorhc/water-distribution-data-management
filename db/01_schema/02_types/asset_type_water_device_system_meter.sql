-- TABLE: asset_type_water_device_system_meter
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_system_meter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

