-- TABLE: well
CREATE TABLE IF NOT EXISTS watersystem.well (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-WELL-' || LPAD(object_id::text, 5, '0')) STORED,
    filtration_type smallint,
    bore_depth numeric,
    aquiler_depth numeric,
    permitted_flow numeric,
    available_flow numeric,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_supply_welltype (code),
    FOREIGN KEY (filtration_type) REFERENCES domains.water_supply_filtration_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- INDEX:
CREATE INDEX ON watersystem.well (object_id);
CREATE INDEX ON watersystem.well (created_date);
CREATE INDEX ON watersystem.well (created_user);
CREATE INDEX ON watersystem.well (last_edited_date);
CREATE INDEX ON watersystem.well (last_edited_user);
CREATE INDEX ON watersystem.well USING gist (shape);

-- COMMENT:
COMMENT ON COLUMN watersystem.well.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.well.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.well.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.well.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.well.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.well.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.well.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.well.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.well.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.well.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.well.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.well.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.well.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.well.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.well.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.well.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.well.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.well.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.well.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.well.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.well.last_edited_date IS 'Date and time of the most recent modification to the record';
COMMENT ON COLUMN watersystem.well.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN watersystem.well.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN watersystem.well.filtration_type IS 'Indicates the type of filtration system used for water treatment';
COMMENT ON COLUMN watersystem.well.bore_depth IS 'Represents the depth of the borehole in meters';
COMMENT ON COLUMN watersystem.well.aquiler_depth IS 'Specifies the depth at which the aquifer is located';
COMMENT ON COLUMN watersystem.well.permitted_flow IS 'Defines the maximum flow rate allowed for the well';
COMMENT ON COLUMN watersystem.well.available_flow IS 'Indicates the current flow rate available from the well';
COMMENT ON COLUMN watersystem.well.last_maint IS 'Date of the most recent maintenance performed on the asset';
