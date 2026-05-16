-- TABLE: sample_station
CREATE TABLE IF NOT EXISTS watersystem.sample_station (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-SAMPLE-STATION-' || LPAD(object_id::text, 5, '0')) STORED,
    location varchar(255),
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.water_sample_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- INDEX:
CREATE INDEX ON watersystem.sample_station (object_id);
CREATE INDEX ON watersystem.sample_station (created_date);
CREATE INDEX ON watersystem.sample_station (created_user);
CREATE INDEX ON watersystem.sample_station (last_edited_date);
CREATE INDEX ON watersystem.sample_station (last_edited_user);
CREATE INDEX ON watersystem.sample_station USING gist (shape);

-- COMMENT:
COMMENT ON COLUMN watersystem.sample_station.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.sample_station.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.sample_station.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.sample_station.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.sample_station.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.sample_station.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.sample_station.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.sample_station.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.sample_station.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.sample_station.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.sample_station.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.sample_station.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.sample_station.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.sample_station.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.sample_station.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.sample_station.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.sample_station.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.sample_station.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.sample_station.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.sample_station.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.sample_station.last_edited_date IS 'Date and time of the most recent modification to the record';
COMMENT ON COLUMN watersystem.sample_station.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN watersystem.sample_station.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN watersystem.sample_station.location IS 'Location of the sample station';
COMMENT ON COLUMN watersystem.sample_station.last_maint IS 'Date of the most recent maintenance performed on the asset';
