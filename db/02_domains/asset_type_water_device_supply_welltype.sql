-- TABLE: asset_type_water_device_supply_welltype
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_supply_welltype (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

