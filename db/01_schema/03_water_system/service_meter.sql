-- TABLE: service_meter
CREATE TABLE IF NOT EXISTS water_system.service_meter (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service Meter',
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 20 AND 600),
    account_id varchar(50),
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_service_meter (code)
)
INHERITS (
    water_system.punctual_asset
);

