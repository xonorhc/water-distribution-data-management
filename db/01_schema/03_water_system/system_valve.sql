-- TABLE: system_valve
CREATE TABLE IF NOT EXISTS water_system.system_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'System Valve',
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    design_type smallint,
    valve_status smallint,
    clockwise_to_close smallint,
    turns_to_close numeric,
    operable boolean,
    has_bypass boolean,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES types.water_valve_type (code),
    FOREIGN KEY (valve_status) REFERENCES types.pipeline_valve_status (code),
    FOREIGN KEY (clockwise_to_close) REFERENCES types.pipeline_valve_close_direction (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_system_valve (code)
)
INHERITS (
    water_system.punctual_asset
);

