-- TABLE: pump
CREATE TABLE IF NOT EXISTS water_system.pump (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pump',
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 100 AND 1200),
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 100 AND 1200),
    pressure numeric,
    design_type smallint,
    design_info numeric,
    operable boolean,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES types.water_pump_type (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_pump (code)
)
INHERITS (
    water_system.punctual_asset
);

