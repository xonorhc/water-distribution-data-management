-- TABLE: storage
CREATE TABLE IF NOT EXISTS watersystem.storage (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-STORAGE-' || LPAD(object_id::text, 5, '0')) STORED,
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

