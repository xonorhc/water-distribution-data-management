CREATE TABLE IF NOT EXISTS service (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'SERVICE', -- Identifier assigned to the asset for tracking purposes
    design_type smallint, -- Classification of the water type associated with the asset
    material smallint, -- Composition of the assets construction material
    diameter smallint CHECK (diameter BETWEEN 15 AND 250), -- Measurement of the assets diameter
    measured_length numeric(8, 2) CHECK (measured_length > 0), -- Length of the pipe casing as measured in the field
    tracer_wire smallint DEFAULT 0, -- Indicates whether tracer wire is present
    PRIMARY KEY (object_id),
    FOREIGN KEY (asset_type) REFERENCES asset_type_water_line_service (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (material) REFERENCES water_service_material (code),
    FOREIGN KEY (design_type) REFERENCES water_type (code),
    FOREIGN KEY (tracer_wire) REFERENCES yes_no (code)
)
INHERITS (
    linear_asset
);

CREATE INDEX ON service USING gist (shape);

CREATE INDEX ON service (shape_length);

