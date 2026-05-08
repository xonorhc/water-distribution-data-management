-- TABLE: service_connection
CREATE TABLE IF NOT EXISTS watersystem.service_connection (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-SERVICE-CONNECTION-' || LPAD(object_id::text, 5, '0')) STORED,
    account_id varchar(50),
    critical boolean DEFAULT FALSE,
    metered boolean DEFAULT FALSE,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_service_connection (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.service_connection USING gist (shape);

