BEGIN;

CREATE TABLE IF NOT EXISTS service (
    object_id serial,
    asset_id varchar(64) DEFAULT 'SERVICE',

    design_type smallint,
    material smallint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 250),
    measured_length numeric(8, 2) CHECK (measured_length > 0),
    tracer_wire smallint DEFAULT 0,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_line_service (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (material) REFERENCES water_service_material (code),
    FOREIGN KEY (design_type) REFERENCES water_type (code),
    FOREIGN KEY (tracer_wire) REFERENCES yes_no (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    linear_asset
);

CREATE INDEX ON service USING gist (shape);
CREATE INDEX ON service (shape_length);

COMMENT ON COLUMN service.design_type IS 'Classification of the water type associated with the asset';
COMMENT ON COLUMN service.material IS 'Composition of the assets construction material';
COMMENT ON COLUMN service.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN service.measured_length IS 'Length of the pipe casing as measured in the field';
COMMENT ON COLUMN service.tracer_wire IS 'Indicates whether tracer wire is present';

COMMIT;
