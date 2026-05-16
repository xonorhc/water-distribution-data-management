-- TABLE: storage
CREATE TABLE IF NOT EXISTS watersystem.storage (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-STORAGE-' || LPAD(object_id::text, 5, '0')) STORED,
    height numeric,
    width numeric,
    volume numeric,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_storage (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- INDEX:
CREATE INDEX ON watersystem.storage (object_id);
CREATE INDEX ON watersystem.storage (created_date);
CREATE INDEX ON watersystem.storage (created_user);
CREATE INDEX ON watersystem.storage (last_edited_date);
CREATE INDEX ON watersystem.storage (last_edited_user);
CREATE INDEX ON watersystem.storage USING gist (shape);

-- COMMENT:
COMMENT ON COLUMN watersystem.storage.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.storage.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.storage.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.storage.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.storage.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.storage.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.storage.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.storage.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.storage.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.storage.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.storage.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.storage.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.storage.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.storage.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.storage.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.storage.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.storage.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.storage.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.storage.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.storage.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.storage.last_edited_date IS 'Date and time of the most recent modification to the record';
COMMENT ON COLUMN watersystem.storage.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN watersystem.storage.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN watersystem.storage.height IS 'Vertical measurement of the storage asset';
COMMENT ON COLUMN watersystem.storage.width IS 'Horizontal measurement of the storage asset';
COMMENT ON COLUMN watersystem.storage.volume IS 'Capacity or volume of the storage asset';
COMMENT ON COLUMN watersystem.storage.last_maint IS 'Date of the most recent maintenance performed on the asset';
