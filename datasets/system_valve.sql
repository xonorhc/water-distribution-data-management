CREATE TABLE IF NOT EXISTS system_valve (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'SYSTEM VALVE', -- Identifier assigned to the asset for tracking purposes
    manufacturer smallint, -- Name of the company that produced the asset
    model bigint, -- Specific model designation of the asset
    last_maint date, -- Date of the most recent maintenance performed on the asset
    diameter smallint DEFAULT 0, -- Measurement of the assets diameter
    design_type smallint DEFAULT 0, -- Classification of the valve design
    valve_status smallint DEFAULT 1, -- Current operational status of the valve
    clockwise_to_close smallint, -- Indicates the direction required to close the valve
    turns_to_close numeric, -- Number of turns needed to close de valve
    operable boolean DEFAULT 1, -- Indicates whether the asset is functional
    has_bypass boolean, -- Indicate if the valve includes a bypass feature
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_system_valve (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES water_valve_type (code),
    FOREIGN KEY (valve_status) REFERENCES pipeline_valve_status (code),
    FOREIGN KEY (clockwise_to_close) REFERENCES pipeline_valve_close_direction (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON system_valve USING gist (shape);

