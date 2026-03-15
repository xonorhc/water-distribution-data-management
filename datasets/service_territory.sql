CREATE TABLE IF NOT EXISTS service_territory (
    object_id serial PRIMARY KEY, -- Unique identifier for each feature in the layer
    name varchar(50), -- Name of the utility associated with the service territory
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

CREATE INDEX ON service_territory (shape_area);

CREATE INDEX ON service_territory (shape_length);

CREATE INDEX ON service_territory USING gist (shape);
