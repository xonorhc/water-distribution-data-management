-- TABLE: interconnect
CREATE TABLE IF NOT EXISTS water_system.interconnect (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Interconnect',
    last_maint date,
    permitted_flow numeric,
    avaible_flow numeric,
    emergency boolean,
    FOREIGN KEY (asset_type) REFERENCES types.water_interconnect_connection_type (code)
)
INHERITS (
    water_system.punctual_asset
);

