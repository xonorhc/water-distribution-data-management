-- TABLE: backflow
CREATE TABLE IF NOT EXISTS watersystem.backflow (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-BACKFLOW-' || LPAD(object_id::text, 5, '0')) STORED,
    is_locked boolean DEFAULT FALSE,
    manufacturer smallint,
    design_model bigint,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_assembly_backflow (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.backflow USING gist (shape);

