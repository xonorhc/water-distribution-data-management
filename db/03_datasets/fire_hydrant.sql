-- TABLE: fire_hydrant
CREATE TABLE IF NOT EXISTS watersystem.fire_hydrant (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Fire Hydrant',
    diameter smallint DEFAULT 0,
    nozzle_diameter smallint DEFAULT 0,
    manufacturer bigint,
    design_model bigint,
    last_maint date,
    station varchar(64),
    public_view boolean DEFAULT FALSE,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_fire_hydrant (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_hydrant_service_diameter (code),
    FOREIGN KEY (nozzle_diameter) REFERENCES domains.water_hydrant_nozzle_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.water_fire_hydrant_manufacturer (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.fire_hydrant USING gist (shape);

