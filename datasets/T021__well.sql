BEGIN;

CREATE TABLE IF NOT EXISTS well (
    object_id serial,
    asset_id varchar(64) DEFAULT 'WELL',

    last_maint date,
    filtration_type smallint,
    bore_depth numeric,
    aquiler_depth numeric,
    permitted_flow numeric,
    available_flow numeric,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_device_supply_welltype (code),
    FOREIGN KEY (filtration_type) REFERENCES water_supply_filtration_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON well USING gist (shape);

COMMENT ON COLUMN well.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN well.filtration_type IS 'Indicates the type of filtration system used for water treatment';
COMMENT ON COLUMN well.bore_depth IS 'Represents the depth of the borehole in meters';
COMMENT ON COLUMN well.aquiler_depth IS 'Specifies the depth at which the aquifer is located';
COMMENT ON COLUMN well.permitted_flow IS 'Defines the maximum flow rate allowed for the well';
COMMENT ON COLUMN well.available_flow IS 'Indicates the current flow rate available from the well';

COMMIT;
