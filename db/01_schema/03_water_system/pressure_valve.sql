-- TABLE: pressure_valve
CREATE TABLE IF NOT EXISTS water_system.pressure_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pressure Valve',
    manufacturer smallint,
    design_model bigint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    pressure numeric,
    last_maint date,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_pressure_valve (code)
)
INHERITS (
    water_system.punctual_asset
);

