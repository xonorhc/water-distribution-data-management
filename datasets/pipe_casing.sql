CREATE TABLE IF NOT EXISTS pipe_casing (
    object_id serial PRIMARY KEY, -- Unique identifier for each feature in the layer
    asset_type smallint REFERENCES assset_type_structure_line_pipeline_casing (id) NOT NULL DEFAULT 0, -- Categorization of the type of asset represented by the feature
    asset_id varchar(64), -- Identifier assigned to the asset for tracking purposes
    diameter smallint REFERENCES pipeline_casing_diameter (id) DEFAULT 0, -- Measurement of the width of the pipe casing
    fill_type smallint REFERENCES pipeline_casing_fill_type (id) DEFAULT 0, -- Material used to fill the pipe casing
    measured_length numeric, -- Length of the pipe casing as measured in the field
    install_date date, -- Date when the asset was installed
    lifecycle_status smallint REFERENCES lifecycle (1) NOT NULL DEFAULT 8, -- Current stage or condition of the asset in its lifecycle
    inservice_date date, -- Date when the asset was put into active service
    retired_date date, -- Date when the asset was retired
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
    shape_length numeric, -- Length of the geometry associated with the feature
    shape geometry(linestring, 4326) -- Geometric representation of the feature
);

CREATE INDEX ON pipe_casing USING gist (shape);

CREATE INDEX ON pipe_casing (shape_length);
