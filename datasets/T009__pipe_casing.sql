BEGIN;

CREATE TABLE IF NOT EXISTS pipe_casing (
    object_id serial,
    asset_id varchar(64) DEFAULT 'PIPE CASING',

    fill_type smallint,
    diameter smallint,
    measured_length numeric(8, 2) CHECK (measured_length > 0),

    FOREIGN KEY (asset_type) REFERENCES asset_type_structure_line_pipeline_casing (code),
    FOREIGN KEY (diameter) REFERENCES pipeline_casing_diameter (code),
    FOREIGN KEY (fill_type) REFERENCES pipeline_casing_fill_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    linear_asset
);

CREATE INDEX ON pipe_casing USING gist (shape);
CREATE INDEX ON pipe_casing (shape_length);

COMMENT ON COLUMN pipe_casing.fill_type IS 'Material used to fill the pipe casing';
COMMENT ON COLUMN pipe_casing.diameter IS 'Measurement of the width of the pipe casing';
COMMENT ON COLUMN pipe_casing.measured_length IS 'Length of the pipe casing as measured in the field';

COMMIT;
