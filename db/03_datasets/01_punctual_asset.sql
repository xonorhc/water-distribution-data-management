-- TABLE: punctual_asset
CREATE TABLE IF NOT EXISTS watersystem.punctual_asset (
    latitude numeric(9, 7) GENERATED ALWAYS AS (ST_Y (ST_TRANSFORM (shape, 4326))) STORED,
    longitude numeric(10, 7) GENERATED ALWAYS AS (ST_X (ST_TRANSFORM (shape, 4326))) STORED,
    shape geometry(point, :SRID) NOT NULL,
    symbol_rotation smallint DEFAULT 0,
    CHECK (symbol_rotation BETWEEN 0 AND 359)
)
INHERITS (
    watersystem.asset
);

-- INDEX:
CREATE INDEX ON watersystem.punctual_asset (object_id);
CREATE INDEX ON watersystem.punctual_asset (created_date);
CREATE INDEX ON watersystem.punctual_asset (created_user);
CREATE INDEX ON watersystem.punctual_asset (last_edited_date);
CREATE INDEX ON watersystem.punctual_asset (last_edited_user);
CREATE INDEX ON watersystem.punctual_asset USING gist (shape);

-- COMMENT:
COMMENT ON COLUMN watersystem.punctual_asset.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.punctual_asset.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.punctual_asset.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.punctual_asset.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.punctual_asset.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.punctual_asset.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.punctual_asset.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.punctual_asset.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.punctual_asset.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.punctual_asset.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.punctual_asset.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.punctual_asset.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.punctual_asset.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.punctual_asset.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.punctual_asset.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.punctual_asset.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.punctual_asset.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.punctual_asset.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.punctual_asset.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.punctual_asset.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.punctual_asset.last_edited_date IS 'Date and time of the most recent modification to the record';
COMMENT ON COLUMN watersystem.punctual_asset.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN watersystem.punctual_asset.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
