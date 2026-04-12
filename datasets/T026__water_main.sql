BEGIN;

CREATE TABLE IF NOT EXISTS water_main (
    object_id serial,
    asset_id varchar(64) DEFAULT 'WATER MAIN',

    design_type smallint,
    material smallint,
    diameter smallint CHECK (diameter BETWEEN 100 AND 1900),
    measured_length numeric(8, 2),
    tracer_wire boolean,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_line_water_main (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (material) REFERENCES water_main_material (code),
    FOREIGN KEY (design_type) REFERENCES water_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    linear_asset
);

CREATE INDEX ON water_main USING gist (shape);
CREATE INDEX ON water_main (shape_length);

COMMENT ON COLUMN water_main.design_type IS 'Classification of the water type associated with the asset';
COMMENT ON COLUMN water_main.material IS 'Composition of the assets construction material';
COMMENT ON COLUMN water_main.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN water_main.measured_length IS 'Length of the pipe casing as measured in the field';
COMMENT ON COLUMN water_main.tracer_wire IS 'Indicates whether tracer wire is present';

COMMIT;
