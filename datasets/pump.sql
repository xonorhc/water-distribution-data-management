CREATE TABLE IF NOT EXISTS pump (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'PUMP', -- Identifier assigned to the asset for tracking purposes
    manufacturer smallint, -- Name of the company that produced the asset
    model bigint, -- Specific model designation of the asset
    last_maint date, -- Date of the most recent maintenance performed on the asset
    diameter smallint CHECK (diameter BETWEEN 100 AND 1200), -- Measurement of the inlet diameter of the pump
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 100 AND 1200), -- Measurement od the outlet diameter of the pump
    pressure numeric, -- Maximum pressure rating for the pump
    design_type smallint DEFAULT 0, -- Classification of the pump based on its design
    design_info numeric, -- Flow rate specification fot the pump
    operable boolean DEFAULT 1, -- Indicates whether the pump is functional
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_pump (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES water_pump_type (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON pump USING gist (shape);

