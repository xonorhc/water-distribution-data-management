-- TABLE: backflow
CREATE TABLE IF NOT EXISTS water_system.backflow (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Backflow',
    manufacturer smallint,
    design_model bigint,
    is_locked boolean,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_assembly_backflow (code)
)
INHERITS (
    water_system.punctual_asset
);

