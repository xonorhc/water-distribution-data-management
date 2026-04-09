BEGIN;

CREATE TABLE IF NOT EXISTS service_meter (
    object_id serial,
    asset_id varchar(64) DEFAULT 'SERVICE METER',

    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 20 AND 600),
    account_id varchar(50),

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_service_meter (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON service_meter USING gist (shape);

COMMENT ON COLUMN service_meter.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN service_meter.design_model IS 'Specific model designation of the asset';
COMMENT ON COLUMN service_meter.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN service_meter.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN service_meter.account_id IS 'Identifierassociated with the account linked to the service connection';

COMMIT;
