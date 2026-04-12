BEGIN;

CREATE SEQUENCE IF NOT EXISTS asset_global_id_seq AS bigint;

CREATE TABLE IF NOT EXISTS asset (
    global_id bigint NOT NULL DEFAULT NEXTVAL('asset_global_id_seq'),

    object_id integer,
    asset_id varchar(64),
    asset_type smallint,
    nickname varchar(64),

    lifecycle_status smallint NOT NULL DEFAULT 4,
    install_date date,
    inservice_date date,
    retired_date date,
    owned_by smallint DEFAULT 1,
    main_by smallint DEFAULT 1,
    notes varchar(2000),

    spatial_source smallint,
    spatial_confidence smallint,
    latitude numeric(9, 7),
    longitude numeric(9, 7),
    altitude numeric(6, 3),

    created_user varchar(255),
    created_date timestamp,
    last_edited_user varchar(255),
    last_edited_date timestamp,

    FOREIGN KEY (lifecycle_status) REFERENCES lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES spatial_confidence (code),
    PRIMARY KEY (global_id)
);

ALTER SEQUENCE asset_global_id_seq OWNED BY asset.global_id;

COMMENT ON COLUMN asset.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN asset.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN asset.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN asset.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN asset.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN asset.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN asset.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN asset.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN asset.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN asset.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN asset.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN asset.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN asset.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN asset.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN asset.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN asset.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN asset.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN asset.created_user IS 'User who created the feature';
COMMENT ON COLUMN asset.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN asset.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN asset.last_edited_date IS 'Date and time of the most recent modification to the record';

COMMIT;
