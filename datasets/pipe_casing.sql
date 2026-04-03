CREATE TABLE IF NOT EXISTS pipe_casing (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'PIPE CASING', -- Identifier assigned to the asset for tracking purposes
    fill_type smallint, -- Material used to fill the pipe casing
    diameter smallint, -- Measurement of the width of the pipe casing
    measured_length numeric(8, 2) CHECK (measured_length > 0), -- Length of the pipe casing as measured in the field
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES assset_type_structure_line_pipeline_casing (code),
    FOREIGN KEY (diameter) REFERENCES pipeline_casing_diameter (code),
    FOREIGN KEY (fill_type) REFERENCES pipeline_casing_fill_type (code)
)
INHERITS (
    linear_asset
);

CREATE INDEX ON pipe_casing USING gist (shape);

CREATE INDEX ON pipe_casing (shape_length);

