-- TABLE: service_connection
CREATE TABLE IF NOT EXISTS water_system.service_connection (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service Connection',
    last_maint date,
    account_id varchar(50),
    critical boolean DEFAULT FALSE,
    metered boolean DEFAULT FALSE,
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_service_connection (code)
)
INHERITS (
    water_system.punctual_asset
);

