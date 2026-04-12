BEGIN;

CREATE TABLE IF NOT EXISTS flushing_and_blow_off (
    object_id serial,
    asset_id varchar(64) DEFAULT 'FLUSHING AND BLOW OF',

    manufacturer smallint,
    design_model bigint,
    last_maint date,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_flushing_and_blow_off (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON flushing_and_blow_off USING gist (shape);

COMMENT ON COLUMN flushing_and_blow_off.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN flushing_and_blow_off.design_model IS 'Specific model designation of the asset';
COMMENT ON COLUMN flushing_and_blow_off.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMIT;
