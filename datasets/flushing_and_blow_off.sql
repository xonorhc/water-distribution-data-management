CREATE TABLE IF NOT EXISTS flushing_and_blow_off (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'FLUSHING AND BLOW OF', -- Identifier assigned to the asset for tracking purposes
    manufacturer smallint, -- Name of the company that produced the asset
    model bigint, -- Specific model designation of the asset
    last_maint date, -- Date of the most recent maintenance performed on the asset
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_flushing_and_blow_off (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON flushing_and_blow_off USING gist (shape);

