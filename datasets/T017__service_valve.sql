CREATE TABLE IF NOT EXISTS service_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'SERVICE VALVE',

    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    design_type smallint,
    valve_status smallint,
    clockwise_to_close smallint,
    turns_to_close numeric,
    operable boolean DEFAULT true,
    post_indicator_valve boolean DEFAULT false,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_service_valve (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES water_valve_type (code),
    FOREIGN KEY (valve_status) REFERENCES pipeline_valve_status (code),
    FOREIGN KEY (clockwise_to_close) REFERENCES pipeline_valve_close_direction (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON service_valve USING gist (shape);

COMMENT ON COLUMN service_valve.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN service_valve.design_model IS 'Specific model designation of the asset';
COMMENT ON COLUMN service_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN service_valve.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN service_valve.design_type IS 'Classification of the valve design';
COMMENT ON COLUMN service_valve.valve_status IS 'Current operational status of the valve';
COMMENT ON COLUMN service_valve.clockwise_to_close IS 'Indicates the direction required to close the valve';
COMMENT ON COLUMN service_valve.turns_to_close IS 'Number of turns needed to close de valve';
COMMENT ON COLUMN service_valve.operable IS 'Indicates whether the asset is functional';
COMMENT ON COLUMN service_valve.post_indicator_valve IS 'Specifies if the valve has as post-indicator';

COMMIT;
