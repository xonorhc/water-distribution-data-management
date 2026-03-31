CREATE TABLE IF NOT EXISTS service_connection (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'SERVICE CONNECTION', -- Identifier assigned to the asset for tracking purposes
    last_maint date, -- Date of the most recent maintenance performed on the asset
    account_id varchar(50), -- Identifierassociated with the account linked to the service connection
    critical boolean DEFAULT 0, -- Indicates whether the service connection is critical
    metered boolean DEFAULT 0, -- Specifies if the service connection is metered
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_service_connection (code)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON service_connection USING gist (shape);

