BEGIN;

CREATE TABLE IF NOT EXISTS flow_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'FLOW VALVE',

    manufacturer smallint,
    model_design bigint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    last_maint date,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_flow_valve (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON flow_valve USING gist (shape);

COMMENT ON COLUMN flow_valve.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN flow_valve.model_design IS 'Specific model designation of the asset';
COMMENT ON COLUMN flow_valve.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN flow_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMIT;
