CREATE TABLE IF NOT EXISTS pump (
    object_id serial PRIMARY KEY, -- Unique identifier for each feature in the layer
    asset_type smallint REFERENCES asset_type_water_device_pump (id) NOT NULL DEFAULT 0, -- Categorization of the type of water distribution asset
    asset_id varchar(64), -- Identifier assigned to the asset for tracking purposes
    diameter smallint REFERENCES water_pump_diameter (id) DEFAULT 0, -- Measurement of the inlet diameter of the pump
    secondary_diameter smallint REFERENCES water_pump_diameter (id) DEFAULT 0, -- Measurement od the outlet diameter of the pump
    pressure numeric, -- Maximum pressure rating for the pump
    manufacturer bigint, -- Name of the company that produced the asset
    model bigint, -- Specific model designation of the asset
    design_type smallint REFERENCES water_pump_type (id) DEFAULT 0, -- Classification of the pump based on its design
    design_info numeric, -- Flow rate specification fot the pump
    operable boolean DEFAULT 1, -- Indicates whether the pump is functional
    name varchar(64), -- Name or label assigned to the pump
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

CREATE INDEX ON pump USING gist (shape);
