CREATE TABLE IF NOT EXISTS well (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'WELL', -- Identifier assigned to the asset for tracking purposes
    last_maint date, -- Date of the most recent maintenance performed on the asset
    filtration_type smallint, -- Indicates the type of filtration system used for water treatment
    bore_depth numeric, -- Represents the depth of the borehole in meters
    aquiler_depth numeric, -- Specifies the depth at which the aquifer is located
    permitted_flow numeric, -- Defines the maximum flow rate allowed for the well
    available_flow numeric, -- Indicates the current flow rate available from the well
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_supply_welltype (code),
    FOREIGN KEY (filtration_type) REFERENCES water_supply_filtration_type (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON well USING gist (shape);

