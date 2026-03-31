CREATE TABLE IF NOT EXISTS backflow (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'BACKFLOW', -- Identifier assigned to the asset for tracking purposes
    manufacturer smallint, -- Name of the company that produced the asset
    model bigint, -- Specific model designation of the asset
    is_locked smallint DEFAULT 0, -- Indicates whether the asset is locked or accessible
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_assembly_backflow (id),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (is_locked) REFERENCES yes_no (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON backflow USING gist (shape);

