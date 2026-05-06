-- TABLE: water_main
CREATE TABLE IF NOT EXISTS watersystem.water_main (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Main',
    material smallint DEFAULT 0,
    diameter smallint DEFAULT 0,
    water_type smallint DEFAULT 1,
    measured_length numeric(8, 2),
    tracer_wire boolean DEFAULT FALSE,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_line_water_main (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_main_diameter (code),
    FOREIGN KEY (material) REFERENCES domains.water_main_material (code),
    FOREIGN KEY (water_type) REFERENCES domains.water_type (code),
    CHECK (measured_length > 0)
)
INHERITS (
    watersystem.linear_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.water_main USING gist (shape);
CREATE INDEX ON watersystem.water_main (shape_length);

