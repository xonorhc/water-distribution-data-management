-- TABLE: pressure_valve
CREATE TABLE IF NOT EXISTS watersystem.pressure_valve (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-PRESSURE-VALVE-' || LPAD(object_id::text, 5, '0')) STORED,
    diameter smallint DEFAULT 0,
    pressure numeric,
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_pressure_valve (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code),
    CHECK (pressure > 0)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.pressure_valve USING gist (shape);

