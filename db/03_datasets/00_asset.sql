-- SEQUENCE: asset_global_id_seq
CREATE SEQUENCE IF NOT EXISTS watersystem.asset_global_id_seq AS bigint;

-- TABLE: asset
CREATE TABLE IF NOT EXISTS watersystem.asset (
    global_id bigint DEFAULT nextval('watersystem.asset_global_id_seq'),
    object_id integer,
    asset_id varchar(64),
    asset_type smallint NOT NULL DEFAULT 0,
    nickname varchar(64),
    lifecycle_status smallint NOT NULL DEFAULT 4,
    install_date date,
    inservice_date date,
    retired_date date,
    owned_by smallint DEFAULT 1,
    main_by smallint DEFAULT 1,
    notes varchar(2000),
    spatial_source smallint DEFAULT 0,
    spatial_confidence smallint DEFAULT 0,
    latitude numeric(9, 7),
    longitude numeric(10, 7),
    altitude numeric(6, 3),
    created_user varchar(64),
    created_date timestamptz,
    last_edited_user varchar(64),
    last_edited_date timestamptz,
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES domains.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES domains.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES domains.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES domains.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES domains.spatial_confidence (code)
);

ALTER SEQUENCE watersystem.asset_global_id_seq OWNED BY watersystem.asset.global_id;

-- INDEX:
CREATE INDEX ON watersystem.asset (created_date);
CREATE INDEX ON watersystem.asset (created_user);
CREATE INDEX ON watersystem.asset (last_edited_date);
CREATE INDEX ON watersystem.asset (last_edited_user);

-- COMMENT:
COMMENT ON COLUMN watersystem.asset.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.asset.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.asset.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.asset.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.asset.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.asset.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.asset.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.asset.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.asset.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.asset.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.asset.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.asset.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.asset.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.asset.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.asset.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.asset.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.asset.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.asset.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.asset.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.asset.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.asset.last_edited_date IS 'Date and time of the most recent modification to the record';
