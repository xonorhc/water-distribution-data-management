-- TABLE: backflow
CREATE TABLE IF NOT EXISTS watersystem.backflow (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-BACKFLOW-' || LPAD(object_id::text, 5, '0')) STORED,
    is_locked boolean DEFAULT FALSE,
    manufacturer smallint,
    design_model bigint,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_assembly_backflow (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- INDEX:
CREATE INDEX ON watersystem.backflow (object_id);
CREATE INDEX ON watersystem.backflow (created_date);
CREATE INDEX ON watersystem.backflow (created_user);
CREATE INDEX ON watersystem.backflow (last_edited_date);
CREATE INDEX ON watersystem.backflow (last_edited_user);
CREATE INDEX ON watersystem.backflow USING gist (shape);

-- COMMENT:
COMMENT ON COLUMN watersystem.backflow.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.backflow.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.backflow.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.backflow.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.backflow.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.backflow.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.backflow.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.backflow.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.backflow.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.backflow.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.backflow.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.backflow.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.backflow.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.backflow.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.backflow.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.backflow.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.backflow.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.backflow.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.backflow.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.backflow.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.backflow.last_edited_date IS 'Date and time of the most recent modification to the record';
COMMENT ON COLUMN watersystem.backflow.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN watersystem.backflow.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN watersystem.backflow.is_locked IS 'Indicates whether the asset is locked or accessible';
COMMENT ON COLUMN watersystem.backflow.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN watersystem.backflow.design_model IS 'Specific model designation of the asset';
