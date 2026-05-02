-- TABLE: asset_type_water_device_service_meter
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_service_meter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

