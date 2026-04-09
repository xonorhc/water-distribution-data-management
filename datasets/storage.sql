BEGIN;

CREATE TABLE IF NOT EXISTS storage (
    object_id serial,
    asset_id varchar(64) DEFAULT 'STORAGE',

    last_maint date,
    height numeric,
    width numeric,
    volume numeric,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_storage (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON storage USING gist (shape);

COMMENT ON COLUMN storage.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN storage.height IS 'Vertical measurement of the storage asset';
COMMENT ON COLUMN storage.width IS 'Horizontal measurement of the storage asset';
COMMENT ON COLUMN storage.volume IS 'Capacity or volume of the storage asset';

COMMIT;
