-- TABLE: flow_valve
CREATE TABLE IF NOT EXISTS water_system.flow_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Flow Valve',
    manufacturer smallint,
    design_model bigint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    last_maint date,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_flow_valve (code)
)
INHERITS (
    water_system.punctual_asset
);

