BEGIN;

CREATE TABLE IF NOT EXISTS pump (
    object_id serial,
    asset_id varchar(64) DEFAULT 'PUMP',

    manufacturer smallint,
    model_desing bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 100 AND 1200),
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 100 AND 1200),
    pressure numeric,
    design_type smallint DEFAULT 0,
    design_info numeric,
    operable boolean DEFAULT 1,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_pump (code),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES water_pump_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON pump USING gist (shape);

COMMENT ON COLUMN pump.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN pump.model_desing IS 'Specific model designation of the asset';
COMMENT ON COLUMN pump.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN pump.diameter IS 'Measurement of the inlet diameter of the pump';
COMMENT ON COLUMN pump.secondary_diameter IS 'Measurement od the outlet diameter of the pump';
COMMENT ON COLUMN pump.pressure IS 'Maximum pressure rating for the pump';
COMMENT ON COLUMN pump.design_type IS 'Classification of the pump based on its design';
COMMENT ON COLUMN pump.design_info IS 'Flow rate specification fot the pump';
COMMENT ON COLUMN pump.operable IS 'Indicates whether the pump is functional';

COMMIT;
