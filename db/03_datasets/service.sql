-- TABLE: service
CREATE TABLE IF NOT EXISTS watersystem.service (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-SERVICE-LINE-' || LPAD(object_id::text, 5, '0')) STORED,
    diameter smallint DEFAULT 0,
    material smallint DEFAULT 0,
    water_type smallint DEFAULT 1,
    measured_length numeric(8, 2),
    tracer_wire boolean DEFAULT FALSE,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_line_service (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_service_diameter (code),
    FOREIGN KEY (material) REFERENCES domains.water_service_material (code),
    FOREIGN KEY (water_type) REFERENCES domains.water_type (code),
    CHECK (measured_length > 0)
)
INHERITS (
    watersystem.linear_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.service USING gist (shape);
CREATE INDEX ON watersystem.service (shape_length);

