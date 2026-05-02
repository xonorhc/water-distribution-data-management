-- TABLE: storage
CREATE TABLE IF NOT EXISTS water_system.storage (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Storage',
    last_maint date,
    height numeric,
    width numeric,
    volume numeric,
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_storage (code)
)
INHERITS (
    water_system.punctual_asset
);

