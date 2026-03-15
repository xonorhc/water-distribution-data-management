CREATE TABLE IF NOT EXISTS fire_hydrant (
    object_id serial PRIMARY KEY, -- Unique identifier for each feature in the layer
    asset_type smallint REFERENCES asset_type_water_device_fire_hydrant (id) NOT NULL DEFAULT 0, -- Categorization of the type of water distribution asset
    asset_id varchar(64), -- Identifier assigned to the asset for tracking purposes
    diameter smallint REFERENCES water_hydrant_service_diameter (id) DEFAULT 0, -- Measurement of the main diameter of the fire hydrnat
    secondary_diameter smallint REFERENCES water_hydrant_nozzle_diameter (id) DEFAULT 0, -- Measurement of the nozzle diameter of the fire hydrnat
    manufacturer bigint, -- Name of the company that produced the asset
    model bigint, -- Specific model designation of the asset
    install_date date, -- Date when the asset was installed
    lifecycle_status smallint REFERENCES lifecycle (1) NOT NULL DEFAULT 8, -- Current stage or condition of the asset in its lifecycle
    inservice_date date, -- Date when the asset was put into active service
    retired_date date, -- Date when the asset was retired
    notes varchar(2000), -- Additional information or comments about the asset
    last_maint date, -- Date of the most recent maintenance performed on the asset
    owned_by smallint REFERENCES asset_owner (id) DEFAULT 1, -- Entity or organization that owns the asset
    main_by smallint REFERENCES asset_manager (id) DEFAULT 1, -- Entity or organization responsible for maintaining the asset
    spatial_source smallint REFERENCES spatial_source (id) DEFAULT 0, -- Describe the source of spatial data for the assets location
    spatial_confidence smallint REFERENCES spatial_confidence (id) DEFAULT 0, -- Level of confidence in the accuracy of the spatial data
    global_id serial PRIMARY KEY, -- Globally unique identifier fo the feature
    latitude real, -- Latitude coordinate of the asset
    longitude real, -- Longitude coordinate of the asset
    altitude real, -- Altitude of the assets location above sea level
    assignmentt_type bigint REFERENCES fire_hydrant_assignment_type (id), -- Type of task assigned for the fire hydrant
    assignment_due date, -- Deadline for completing the assigned task
    assigned_on date, -- Date when the task was assigned
    station varchar(255), -- Station associated with the assigned task
    shift varchar(255), -- Shift associated with the assigned task
    adoption_status varchar(255) REFERENCES adoption_status (id), -- Status indicating whether the fire hydrant is adopted
    nickname varchar(255), -- Informal name or alias for the fire hydrant
    public_view varchar(255) REFERENCES fire_hydrant_publicview, -- Visibility of the fire hydrant to the public
    adopted_by varchar(255), -- Person or entity that adopted the fire hydrant
    adopted_on date, -- Date when the fire fire hydrant was adopted
    created_user varchar(255), -- User who created the feature
    created_date timestamp, -- Date and time when the feature was created
    last_edited_user varchar(255), -- Tracks the user who last edited the record
    last_edited_date timestamp, -- Date and time of the most recent modification to the record
    shape geometry(point, 4326) -- Geometric representation of the feature
);

CREATE INDEX ON fire_hydrant USING gist (shape);
