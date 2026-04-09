BEGIN;

CREATE TABLE IF NOT EXISTS service_connection (
    object_id serial,
    asset_id varchar(64) DEFAULT 'SERVICE CONNECTION',

    last_maint date,
    account_id varchar(50),
    critical boolean DEFAULT false,
    metered boolean DEFAULT false,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_service_connection (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON service_connection USING gist (shape);

COMMENT ON COLUMN service_connection.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN service_connection.account_id IS 'Identifierassociated with the account linked to the service connection';
COMMENT ON COLUMN service_connection.critical IS 'Indicates whether the service connection is critical';
COMMENT ON COLUMN service_connection.metered IS 'Specifies if the service connection is metered';

COMMIT;
