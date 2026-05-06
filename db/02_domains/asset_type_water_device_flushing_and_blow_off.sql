-- TABLE: asset_type_water_device_flushing_and_blow_off
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_flushing_and_blow_off (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);
