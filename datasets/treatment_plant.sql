CREATE TABLE IF NOT EXISTS treatment_plant (
    permitted_capacity numeric, -- Maximunm capacity allowed for the treatment plant
    rated_capacity numeric, -- Designed operational capacity of the treatment plant
    average_daily_flow numeric, -- Average daily water flow processed by the treatment plant
    filtration_type smallint REFERENCES water_supply_filtration_type (id) DEFAULT 0, -- Type of filtration system used in the treatment plant
    object_id serial PRIMARY KEY, -- Unique identifier for each feature in the layer
    asset_type smallint REFERENCES water_treatment_plant_type (id) NOT NULL DEFAULT 0, -- Categorization of the type of water distribution asset
    asset_id varchar(64), -- Identifier assigned to the asset for tracking purposes
    name varchar(64), -- Name of the treatment plant
    install_date date, -- Date when the asset was installed
    lifecycle_status smallint REFERENCES lifecycle (1) NOT NULL DEFAULT 8, -- Current stage or condition of the asset in its lifecycle
    notes varchar(2000), -- Additional information or comments about the asset
    last_maint date, -- Date of the most recent maintenance performed on the asset
    inservice_date date, -- Date when the asset was put into active service
    retired_date date, -- Date when the asset was retired
    owned_by smallint REFERENCES asset_owner (id) DEFAULT 1, -- Entity or organization that owns the asset
    main_by smallint REFERENCES asset_manager (id) DEFAULT 1, -- Entity or organization responsible for maintaining the asset
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

CREATE INDEX ON treatment_plant USING gist (shape);
