-- TABLE: fire_hydrant
CREATE TABLE IF NOT EXISTS watersystem.fire_hydrant (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-FIRE-HYDRANT-' || LPAD(object_id::text, 5, '0')) STORED,
    diameter smallint DEFAULT 0,
    nozzle_diameter smallint DEFAULT 0,
    manufacturer bigint,
    design_model bigint,
    last_maint date,
    station varchar(64),
    public_view boolean DEFAULT FALSE,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_fire_hydrant (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_hydrant_service_diameter (code),
    FOREIGN KEY (nozzle_diameter) REFERENCES domains.water_hydrant_nozzle_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.water_fire_hydrant_manufacturer (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- INDEX:
CREATE INDEX ON watersystem.fire_hydrant (object_id);
CREATE INDEX ON watersystem.fire_hydrant (created_date);
CREATE INDEX ON watersystem.fire_hydrant (created_user);
CREATE INDEX ON watersystem.fire_hydrant (last_edited_date);
CREATE INDEX ON watersystem.fire_hydrant (last_edited_user);
CREATE INDEX ON watersystem.fire_hydrant USING gist (shape);

-- COMMENT:
COMMENT ON COLUMN watersystem.fire_hydrant.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.fire_hydrant.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.fire_hydrant.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.fire_hydrant.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.fire_hydrant.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.fire_hydrant.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.fire_hydrant.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.fire_hydrant.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.fire_hydrant.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.fire_hydrant.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.fire_hydrant.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.fire_hydrant.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.fire_hydrant.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.fire_hydrant.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.fire_hydrant.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.fire_hydrant.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.fire_hydrant.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.fire_hydrant.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.fire_hydrant.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.fire_hydrant.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.fire_hydrant.last_edited_date IS 'Date and time of the most recent modification to the record';
COMMENT ON COLUMN watersystem.fire_hydrant.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN watersystem.fire_hydrant.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN watersystem.fire_hydrant.diameter IS 'Measurement of the main diameter of the fire hydrnat';
COMMENT ON COLUMN watersystem.fire_hydrant.nozzle_diameter IS 'Measurement of the nozzle diameter of the fire hydrnat';
COMMENT ON COLUMN watersystem.fire_hydrant.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN watersystem.fire_hydrant.design_model IS 'Specific model designation of the asset';
COMMENT ON COLUMN watersystem.fire_hydrant.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN watersystem.fire_hydrant.station IS 'Station associated with the assigned task';
COMMENT ON COLUMN watersystem.fire_hydrant.public_view IS 'Visibility of the fire hydrant to the public';
