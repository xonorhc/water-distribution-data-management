CREATE TABLE IF NOT EXISTS assets (
    global_id serial PRIMARY KEY, -- Globally unique identifier fo the feature
    lifecycle_status smallint REFERENCES lifecycle (id) NOT NULL DEFAULT 8, -- Current stage or condition of the asset in its lifecycle
    install_date date, -- Date when the asset was installed
    inservice_date date, -- Date when the asset was put into active service
    retired_date date, -- Date when the asset was retired
    owned_by smallint REFERENCES asset_owner (id) DEFAULT 1, -- Entity or organization that owns the asset
    main_by smallint REFERENCES asset_manager (id) DEFAULT 1, -- Entity or organization responsible for maintaining the asset
    notes varchar(2000), -- Additional information or comments about the asset
    spatial_source smallint REFERENCES spatial_source (id) DEFAULT 0, -- Describe the source of spatial data for the assets location
    spatial_confidence smallint REFERENCES spatial_confidence (id) DEFAULT 0, -- Level of confidence in the accuracy of the spatial data
    latitude real, -- Latitude coordinate of the asset
    longitude real, -- Longitude coordinate of the asset
    altitude real, -- Altitude of the assets location above sea level
    created_user varchar(255), -- User who created the feature
    created_date timestamp, -- Date and time when the feature was created
    last_edited_user varchar(255), -- Tracks the user who last edited the record
    last_edited_date timestamp -- Date and time of the most recent modification to the record
);

