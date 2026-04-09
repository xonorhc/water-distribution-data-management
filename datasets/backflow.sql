BEGIN;

CREATE TABLE IF NOT EXISTS backflow (
    object_id serial,
    asset_id varchar(64) DEFAULT 'BACKFLOW',

    manufacturer smallint,
    design_model bigint,
    is_locked smallint DEFAULT 0,

    FOREIGN KEY (asset_type) REFERENCES asset_type_water_assembly_backflow (id),
    FOREIGN KEY (manufacturer) REFERENCES manufactured_types (code),
    FOREIGN KEY (is_locked) REFERENCES yes_no (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON backflow USING gist (shape);

COMMENT ON COLUMN backflow.is_locked IS 'Indicates whether the asset is locked or accessible';
COMMENT ON COLUMN backflow.design_model IS 'Specific model designation of the asset';
COMMENT ON COLUMN backflow.manufacturer IS 'Name of the company that produced the asset';

COMMIT;
