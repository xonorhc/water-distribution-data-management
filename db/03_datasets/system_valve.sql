-- TABLE: system_valve
CREATE TABLE IF NOT EXISTS watersystem.system_valve (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-SYSTEM-VALVE-' || LPAD(object_id::text, 5, '0')) STORED,
    diameter smallint DEFAULT 0,
    manufacturer smallint,
    design_model bigint,
    valve_type smallint DEFAULT 0,
    valve_status smallint DEFAULT 1,
    clockwise_to_close smallint,
    turns_to_close numeric,
    operable boolean DEFAULT TRUE,
    has_bypass boolean DEFAULT FALSE,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_system_valve (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code),
    FOREIGN KEY (valve_type) REFERENCES domains.water_valve_type (code),
    FOREIGN KEY (valve_status) REFERENCES domains.pipeline_valve_status (code),
    FOREIGN KEY (clockwise_to_close) REFERENCES domains.pipeline_valve_close_direction (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.system_valve USING gist (shape);

