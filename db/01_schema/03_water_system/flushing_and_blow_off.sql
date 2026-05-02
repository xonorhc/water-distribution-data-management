-- TABLE: flushing_and_blow_off
CREATE TABLE IF NOT EXISTS water_system.flushing_and_blow_off (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Flushing and Blow Off',
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_flushing_and_blow_off (code)
)
INHERITS (
    water_system.punctual_asset
);

