-- TABLE: system_meter
CREATE TABLE IF NOT EXISTS watersystem.system_meter (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-SYSTEM-METER-' || LPAD(object_id::text, 5, '0')) STORED,
    account_id varchar(64),
    diameter smallint DEFAULT 0,
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_system_meter (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_meter_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.system_meter USING gist (shape);

