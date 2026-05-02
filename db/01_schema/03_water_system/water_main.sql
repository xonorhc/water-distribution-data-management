-- TABLE: water_main
CREATE TABLE IF NOT EXISTS water_system.water_main (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Main',
    design_type smallint,
    material smallint,
    diameter smallint CHECK (diameter BETWEEN 100 AND 1900),
    measured_length numeric(8, 2),
    tracer_wire boolean,
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (material) REFERENCES types.water_main_material (code),
    FOREIGN KEY (design_type) REFERENCES types.water_type (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_line_water_main (code)
)
INHERITS (
    water_system.linear_asset
);

