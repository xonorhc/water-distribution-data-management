-- TABLE: pipe_casing
CREATE TABLE IF NOT EXISTS watersystem.pipe_casing (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-PIPE-CASING-' || LPAD(object_id::text, 5, '0')) STORED,
    diameter smallint DEFAULT 0,
    fill_type smallint DEFAULT 0,
    measured_length numeric(8, 2),
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_structure_line_pipeline_casing (code),
    FOREIGN KEY (diameter) REFERENCES domains.pipeline_casing_diameter (code),
    FOREIGN KEY (fill_type) REFERENCES domains.pipeline_casing_fill_type (code),
    CHECK (measured_length > 0)
)
INHERITS (
    watersystem.linear_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.pipe_casing USING gist (shape);
CREATE INDEX ON watersystem.pipe_casing (shape_length);

