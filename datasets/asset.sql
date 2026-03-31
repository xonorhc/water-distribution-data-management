CREATE SEQUENCE IF NOT EXISTS asset_global_id_seq AS bigint;

CREATE TABLE IF NOT EXISTS asset (
    global_id bigint NOT NULL DEFAULT nextval('asset_global_id_seq'), -- Globally unique identifier fo the feature
    --
    object_id integer, -- Unique identifier for each feature in the layer
    asset_id varchar(64), -- Identifier assigned to the asset for tracking purposes
    asset_type smallint NOT NULL DEFAULT 0, -- Categorization of the type of asset represented by the feature
    name varchar(64), -- Name or label assigned to the asset
    --
    lifecycle_status smallint NOT NULL DEFAULT 8, -- Current stage or condition of the asset in its lifecycle
    install_date date, -- Date when the asset was installed
    inservice_date date, -- Date when the asset was put into active service
    retired_date date, -- Date when the asset was retired
    owned_by smallint DEFAULT 1, -- Entity or organization that owns the asset
    main_by smallint DEFAULT 1, -- Entity or organization responsible for maintaining the asset
    notes varchar(2000), -- Additional information or comments about the asset
    --
    spatial_source smallint DEFAULT 0, -- Describe the source of spatial data for the assets location
    spatial_confidence smallint DEFAULT 0, -- Level of confidence in the accuracy of the spatial data
    latitude numeric(9, 7), -- Latitude coordinate of the asset
    longitude numeric(9, 7), -- Longitude coordinate of the asset
    altitude numeric(6, 3), -- Altitude of the assets location above sea level
    --
    created_user varchar(255), -- User who created the feature
    created_date timestamp, -- Date and time when the feature was created
    last_edited_user varchar(255), -- Tracks the user who last edited the record
    last_edited_date timestamp, -- Date and time of the most recent modification to the record
    --
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES spatial_confidence (code)
);

ALTER SEQUENCE asset_global_id_seq owned BY asset.global_id;

