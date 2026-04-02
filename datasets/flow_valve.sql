CREATE TABLE IF NOT EXISTS flow_valve (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'FLOW VALVE', -- Identifier assigned to the asset for tracking purposes
    manufacturer smallint, -- Name of the company that produced the asset
    model bigint, -- Specific model designation of the asset
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900), -- Measurement of the assets diameter
    last_maint date, -- Date of the most recent maintenance performed on the asset
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_flow_valve (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON flow_valve USING gist (shape);

