CREATE TABLE IF NOT EXISTS system_meter (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'SYSTEM METER', -- Identifier assigned to the asset for tracking purposes
    manufacturer smallint, -- Name of the company that produced the asset
    model bigint, -- Specific model designation of the asset
    last_maint date, -- Date of the most recent maintenance performed on the asset
    diameter numeric DEFAULT 0, -- Measurement of the assets diameter
    account_id varchar(50), -- Identifier for the account associated with the asset
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_system_meter (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES water_meter_diameter (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON system_meter USING gist (shape);

