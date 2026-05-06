-- TABLE: flow_valve
CREATE TABLE IF NOT EXISTS watersystem.flow_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Flow Valve',
    diameter smallint DEFAULT 0,
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_flow_valve (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.flow_valve USING gist (shape);

