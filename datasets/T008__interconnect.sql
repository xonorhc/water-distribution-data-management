BEGIN;

CREATE TABLE IF NOT EXISTS interconnect (
    object_id serial,
    asset_id varchar(64) DEFAULT 'INTERCONNECT',

    last_maint date,
    permitted_flow numeric,
    avaible_flow numeric,
    emergency boolean,

    FOREIGN KEY (asset_type) REFERENCES water_interconnect_connection_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON interconnect USING gist (shape);

COMMENT ON COLUMN interconnect.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN interconnect.permitted_flow IS 'Maximum flow rate allowed for the asset';
COMMENT ON COLUMN interconnect.avaible_flow IS 'Flow rate currently available for use';
COMMENT ON COLUMN interconnect.emergency IS 'Indicates if the asset is for emergency use only';

COMMIT;
