CREATE TABLE IF NOT EXISTS storage (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'STORAGE', -- Identifier assigned to the asset for tracking purposes
    last_maint date, -- Date of the most recent maintenance performed on the asset
    height numeric, -- Vertical measurement of the storage asset
    width numeric, -- Horizontal measurement of the storage asset
    volume numeric, -- Capacity or volume of the storage asset
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_storage (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON storage USING gist (shape);

