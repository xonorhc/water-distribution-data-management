-- TABLE: pipe_casing
CREATE TABLE IF NOT EXISTS water_system.pipe_casing (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pipe Casing',
    fill_type smallint,
    diameter smallint,
    measured_length numeric(8, 2) CHECK (measured_length > 0),
    FOREIGN KEY (diameter) REFERENCES types.pipeline_casing_diameter (code),
    FOREIGN KEY (fill_type) REFERENCES types.pipeline_casing_fill_type (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_structure_line_pipeline_casing (code)
)
INHERITS (
    water_system.linear_asset
);

