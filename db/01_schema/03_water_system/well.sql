-- TABLE: well
CREATE TABLE IF NOT EXISTS water_system.well (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Well',
    last_maint date,
    filtration_type smallint,
    bore_depth numeric,
    aquiler_depth numeric,
    permitted_flow numeric,
    available_flow numeric,
    FOREIGN KEY (filtration_type) REFERENCES types.water_supply_filtration_type (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_supply_welltype (code)
)
INHERITS (
    water_system.punctual_asset
);

