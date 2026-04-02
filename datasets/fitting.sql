CREATE TABLE IF NOT EXISTS fitting (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'FITTING', -- Identifier assigned to the asset for tracking purposes
    diameter smallint CHECK (diameter BETWEEN 15 AND 1200), -- Measurement of the fittings diameter
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 15 AND 1200), -- Measurement of the nozzle diameter of the fire hydrnat
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_junction_fitting (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES water_diameter (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON fitting USING gist (shape);

