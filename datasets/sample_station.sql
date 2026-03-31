CREATE TABLE IF NOT EXISTS sample_station (
    object_id serial, -- Unique identifier for each feature in the layer
    asset_id varchar(64) DEFAULT 'SAMPLE STATION', -- Identifier assigned to the asset for tracking purposes
    last_maint date, -- Date of the most recent maintenance performed on the asset
    station_location varchar(255), -- Location of the sample station
    PRIMARY KEY (object_id)
)
INHERITS (
    punctual_asset
);

CREATE INDEX ON sample_station USING gist (shape);

