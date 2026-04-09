BEGIN;

CREATE TABLE IF NOT EXISTS fitting (
    object_id serial,
    asset_id varchar(64) DEFAULT 'FITTING',

    diameter smallint CHECK (diameter BETWEEN 15 AND 1200),
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 15 AND 1200),

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_junction_fitting (code),
    FOREIGN KEY (diameter) REFERENCES water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES water_diameter (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON fitting USING gist (shape);

COMMENT ON COLUMN fitting.diameter IS 'Measurement of the fittings diameter';
COMMENT ON COLUMN fitting.secondary_diameter IS 'Measurement of the nozzle diameter of the fire hydrnat';

COMMIT;
