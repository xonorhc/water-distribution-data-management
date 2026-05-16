-- TABLE: service_connection
CREATE TABLE IF NOT EXISTS watersystem.service_connection (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-SERVICE-CONNECTION-' || LPAD(object_id::text, 5, '0')) STORED,
    account_id varchar(50),
    critical boolean DEFAULT FALSE,
    metered boolean DEFAULT FALSE,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_service_connection (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- INDEX:
CREATE INDEX ON watersystem.service_connection (object_id);
CREATE INDEX ON watersystem.service_connection (created_date);
CREATE INDEX ON watersystem.service_connection (created_user);
CREATE INDEX ON watersystem.service_connection (last_edited_date);
CREATE INDEX ON watersystem.service_connection (last_edited_user);
CREATE INDEX ON watersystem.service_connection USING gist (shape);

-- COMMENT:
COMMENT ON COLUMN watersystem.service_connection.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.service_connection.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.service_connection.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.service_connection.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.service_connection.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.service_connection.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.service_connection.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.service_connection.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.service_connection.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.service_connection.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.service_connection.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.service_connection.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.service_connection.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.service_connection.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.service_connection.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.service_connection.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.service_connection.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.service_connection.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.service_connection.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.service_connection.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.service_connection.last_edited_date IS 'Date and time of the most recent modification to the record';
COMMENT ON COLUMN watersystem.service_connection.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN watersystem.service_connection.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN watersystem.service_connection.account_id IS 'Identifierassociated with the account linked to the service connection';
COMMENT ON COLUMN watersystem.service_connection.critical IS 'Indicates whether the service connection is critical';
COMMENT ON COLUMN watersystem.service_connection.metered IS 'Specifies if the service connection is metered';
COMMENT ON COLUMN watersystem.service_connection.last_maint IS 'Date of the most recent maintenance performed on the asset';
