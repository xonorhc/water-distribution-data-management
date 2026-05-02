-- TABLE: fitting
CREATE TABLE IF NOT EXISTS water_system.fitting (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Fitting',
    diameter smallint CHECK (diameter BETWEEN 15 AND 1200),
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 15 AND 1200),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_junction_fitting (code)
)
INHERITS (
    water_system.punctual_asset
);

