BEGIN;

CREATE TABLE IF NOT EXISTS system_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'SYSTEM VALVE',

    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    design_type smallint DEFAULT 0,
    valve_status smallint DEFAULT 1,
    clockwise_to_close smallint,
    turns_to_close numeric,
    operable boolean DEFAULT 1,
    has_bypass boolean,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_system_valve (code),
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

CREATE INDEX ON system_valve USING gist (shape);

COMMENT ON COLUMN system_valve.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN system_valve.design_model IS 'Specific model designation of the asset';
COMMENT ON COLUMN system_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN system_valve.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN system_valve.design_type IS 'Classification of the valve design';
COMMENT ON COLUMN system_valve.valve_status IS 'Current operational status of the valve';
COMMENT ON COLUMN system_valve.clockwise_to_close IS 'Indicates the direction required to close the valve';
COMMENT ON COLUMN system_valve.turns_to_close IS 'Number of turns needed to close de valve';
COMMENT ON COLUMN system_valve.operable IS 'Indicates whether the asset is functional';
COMMENT ON COLUMN system_valve.has_bypass IS 'Indicate if the valve includes a bypass feature';

COMMIT;
