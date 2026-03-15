CREATE TABLE IF NOT EXISTS water_supply_boundary (
    object_id serial PRIMARY KEY, -- Unique identifier for each feature in the layer
    asset_type smallint REFERENCES asset_type_structure_boundary_water_supply_boundary (id) NOT NULL DEFAULT 0, -- Categorization of the type of water distribution asset
    asset_id varchar(64), -- Identifier assigned to the asset for tracking purposes
    name varchar(64), -- Name or label assigned to the pump
    install_date date, -- Date when the asset was installed
    lifecycle_status smallint REFERENCES lifecycle (1) NOT NULL DEFAULT 8, -- Current stage or condition of the asset in its lifecycle
    inservice_date date, -- Date when the asset was put into active service
    retired_date date, -- Date when the asset was retired
    notes varchar(2000), -- Additional information or comments about the asset
    spatial_source smallint REFERENCES spatial_source (id) DEFAULT 0, -- Describe the source of spatial data for the assets location
    spatial_confidence smallint REFERENCES spatial_confidence (id) DEFAULT 0, -- Level of confidence in the accuracy of the spatial data
    global_id serial PRIMARY KEY, -- Globally unique identifier fo the feature
    latitude real, -- Latitude coordinate of the asset
    longitude real, -- Longitude coordinate of the asset
    altitude real, -- Altitude of the assets location above sea level
    created_user varchar(255), -- User who created the feature
    created_date timestamp, -- Date and time when the feature was created
    last_edited_user varchar(255), -- Tracks the user who last edited the record
    last_edited_date timestamp, -- Date and time of the most recent modification to the record
    shape_area numeric, -- Calculated area of the feature geometry
    shape_length numeric, -- Calculated perimeter length of the feature geometry
    shape geometry(polygon, 4326) -- Geometric representation of the feature
);

CREATE INDEX ON water_supply_boundary (shape_area);

CREATE INDEX ON water_supply_boundary (shape_length);

CREATE INDEX ON water_supply_boundary USING gist (shape);
