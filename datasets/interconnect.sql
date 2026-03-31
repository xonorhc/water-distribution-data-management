CREATE TABLE IF NOT EXISTS interconnect (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'INTERCONNECT', -- Identifier assigned to the asset for tracking purposes
    last_maint date, -- Date of the most recent maintenance performed on the asset
    permitted_flow numeric, -- Maximum flow rate allowed for the asset
    avaible_flow numeric, -- Flow rate currently available for use
    emergency smallint, -- Indicates if the asset is for emergency use only
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES water_interconnect_connection_type (code),
    FOREIGN KEY (emergency) REFERENCES yes_no (code)
)
INHERITS (
    punctual_asset;

CREATE INDEX ON interconnect USING gist (shape);

