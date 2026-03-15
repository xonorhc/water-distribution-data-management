CREATE TABLE IF NOT EXISTS service_valve (
    object_id serial PRIMARY KEY, -- Unique identifier for each feature in the layer
    asset_type smallint REFERENCES asset_type_water_device_service_valve (id) NOT NULL DEFAULT 0, -- Categorization of the type of water distribution asset
    asset_id varchar(64), -- Identifier assigned to the asset for tracking purposes
    diameter smallint REFERENCES water_diameter (id) DEFAULT 0, -- Measurement of the assets diameter
    manufacturer bigint, -- Name of the company that produced the asset
    model bigint, -- Specific model designation of the asset
    design_type smallint REFERENCES water_valve_type (id) DEFAULT 0, -- Classification of the valve design
    valve_status smallint REFERENCES pipeline_valve_status (id) DEFAULT 1, -- Current operational status of the valve
    clockwise_to_close smallint REFERENCES pipeline_valve_close_direction (id), -- Indicates the direction required to close the valve
    turns_to_close numeric, -- Number of turns needed to close de valve
    operable boolean DEFAULT 1, -- Indicates whether the asset is functional
    postindicator_valve boolean, -- Specifies if the valve has as post-indicator
    name varchar(64), -- Name or label assigned to the asset
    install_date date, -- Date when the asset was installed
    owned_by smallint REFERENCES asset_owner (id) DEFAULT 1, -- Entity or organization that owns the asset
    main_by smallint REFERENCES asset_manager (id) DEFAULT 1, -- Entity or organization responsible for maintaining the asset
    notes varchar(2000), -- Additional information or comments about the asset
    last_maint date, -- Date of the most recent maintenance performed on the asset
    lifecycle_status smallint REFERENCES lifecycle (1) NOT NULL DEFAULT 8, -- Current stage or condition of the asset in its lifecycle
    inservice_date date, -- Date when the asset was put into active service
    retired_date date, -- Date when the asset was retired
    spatial_source smallint REFERENCES spatial_source (id) DEFAULT 0, -- Describe the source of spatial data for the assets location
    spatial_confidence smallint REFERENCES spatial_confidence (id) DEFAULT 0, -- Level of confidence in the accuracy of the spatial data
    symbol_rotation smallint REFERENCES symbol_rotation (id) DEFAULT 0, -- Defines the rotation angle for the assets symbol on the map
    global_id serial PRIMARY KEY, -- Globally unique identifier fo the feature
    latitude real, -- Latitude coordinate of the asset
    longitude real, -- Longitude coordinate of the asset
    altitude real, -- Altitude of the assets location above sea level
    created_user varchar(255), -- User who created the feature
    created_date timestamp, -- Date and time when the feature was created
    last_edited_user varchar(255), -- Tracks the user who last edited the record
    last_edited_date timestamp, -- Date and time of the most recent modification to the record
    shape geometry(point, 4326) -- Geometric representation of the feature
);

CREATE INDEX ON service_valve USING gist (shape);
