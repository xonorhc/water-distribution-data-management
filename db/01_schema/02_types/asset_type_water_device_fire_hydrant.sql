-- TABLE: asset_type_water_device_fire_hydrant
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_fire_hydrant (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

