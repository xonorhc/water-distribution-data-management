-- TABLE: storage
CREATE TABLE IF NOT EXISTS watersystem.storage (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Storage',
    height numeric,
    width numeric,
    volume numeric,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_storage (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.storage USING gist (shape);

