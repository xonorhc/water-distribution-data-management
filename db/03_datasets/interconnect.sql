-- TABLE: interconnect
CREATE TABLE IF NOT EXISTS watersystem.interconnect (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-INTERCONNECT-' || LPAD(object_id::text, 5, '0')) STORED,
    permitted_flow numeric,
    avaible_flow numeric,
    emergency boolean DEFAULT FALSE,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.water_interconnect_connection_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.interconnect USING gist (shape);

