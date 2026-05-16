-- TABLE: interconnect
CREATE TABLE IF NOT EXISTS watersystem.interconnect (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-INTERCONNECT-' || LPAD(object_id::text, 5, '0')) STORED,
    permitted_flow numeric,
    avaible_flow numeric,
    emergency boolean DEFAULT FALSE,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.water_interconnect_connection_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- INDEX:
CREATE INDEX ON watersystem.interconnect (object_id);
CREATE INDEX ON watersystem.interconnect (created_date);
CREATE INDEX ON watersystem.interconnect (created_user);
CREATE INDEX ON watersystem.interconnect (last_edited_date);
CREATE INDEX ON watersystem.interconnect (last_edited_user);
CREATE INDEX ON watersystem.interconnect USING gist (shape);

-- COMMENT:
COMMENT ON COLUMN watersystem.interconnect.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.interconnect.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.interconnect.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.interconnect.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.interconnect.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.interconnect.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.interconnect.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.interconnect.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.interconnect.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.interconnect.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.interconnect.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.interconnect.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.interconnect.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.interconnect.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.interconnect.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.interconnect.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.interconnect.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.interconnect.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.interconnect.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.interconnect.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.interconnect.last_edited_date IS 'Date and time of the most recent modification to the record';
COMMENT ON COLUMN watersystem.interconnect.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN watersystem.interconnect.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN watersystem.interconnect.permitted_flow IS 'Maximum flow rate allowed for the asset';
COMMENT ON COLUMN watersystem.interconnect.avaible_flow IS 'Flow rate currently available for use';
COMMENT ON COLUMN watersystem.interconnect.emergency IS 'Indicates if the asset is for emergency use only';
COMMENT ON COLUMN watersystem.interconnect.last_maint IS 'Date of the most recent maintenance performed on the asset';
