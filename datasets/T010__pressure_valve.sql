BEGIN;

CREATE TABLE IF NOT EXISTS pressure_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'PRESSURE VALVE',

    manufacturer smallint,
    design_model bigint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    pressure numeric,
    last_maint date,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_pressure_valve (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON pressure_valve USING gist (shape);

COMMENT ON COLUMN pressure_valve.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN pressure_valve.design_model IS 'Specific model designation of the asset';
COMMENT ON COLUMN pressure_valve.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN pressure_valve.pressure IS 'Pressure rating or capacity of the valve';
COMMENT ON COLUMN pressure_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMIT;
