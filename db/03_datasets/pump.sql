-- TABLE: pump
CREATE TABLE IF NOT EXISTS watersystem.pump (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pump',
    inlet_diameter smallint DEFAULT 0,
    outlet_diameter smallint DEFAULT 0,
    rated_pressure numeric,
    manufacturer smallint,
    design_model bigint,
    pump_type smallint DEFAULT 0,
    rated_flow numeric,
    operable boolean DEFAULT TRUE,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_pump (code),
    FOREIGN KEY (inlet_diameter) REFERENCES domains.water_pump_diameter (code),
    FOREIGN KEY (outlet_diameter) REFERENCES domains.water_pump_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code),
    FOREIGN KEY (pump_type) REFERENCES domains.water_pump_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.pump USING gist (shape);

