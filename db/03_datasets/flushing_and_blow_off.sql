-- TABLE: flushing_and_blow_off
CREATE TABLE IF NOT EXISTS watersystem.flushing_and_blow_off (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Flushing and Blow Off',
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_flushing_and_blow_off (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.flushing_and_blow_off USING gist (shape);

