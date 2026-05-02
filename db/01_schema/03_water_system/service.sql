-- TABLE: service
CREATE TABLE IF NOT EXISTS water_system.service (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service',
    design_type smallint,
    material smallint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 250),
    measured_length numeric(8, 2) CHECK (measured_length > 0),
    tracer_wire boolean,
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (material) REFERENCES types.water_service_material (code),
    FOREIGN KEY (design_type) REFERENCES types.water_type (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_line_service (code)
)
INHERITS (
    water_system.linear_asset
);

