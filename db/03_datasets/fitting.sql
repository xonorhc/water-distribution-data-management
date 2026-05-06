-- TABLE: fitting
CREATE TABLE IF NOT EXISTS watersystem.fitting (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Fitting',
    diameter smallint DEFAULT 0,
    secondary_diameter smallint DEFAULT 0,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_junction_fitting (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_main_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES domains.water_main_diameter (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.fitting USING gist (shape);

