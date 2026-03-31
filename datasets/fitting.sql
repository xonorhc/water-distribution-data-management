CREATE TABLE IF NOT EXISTS fitting (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'FITTING', -- Identifier assigned to the asset for tracking purposes
    diameter smallint DEFAULT 0, -- Measurement of the fittings diameter
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_junction_fitting (code),
    FOREIGN KEY (diameter) REFERENCES water_fitting_diameter (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON fitting USING gist (shape);

