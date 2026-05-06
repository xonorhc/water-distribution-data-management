-- TABLE: well
CREATE TABLE IF NOT EXISTS watersystem.well (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Well',
    filtration_type smallint,
    bore_depth numeric,
    aquiler_depth numeric,
    permitted_flow numeric,
    available_flow numeric,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_supply_welltype (code),
    FOREIGN KEY (filtration_type) REFERENCES domains.water_supply_filtration_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.well USING gist (shape);

