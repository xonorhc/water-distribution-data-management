-- TABLE: flow_valve
CREATE TABLE IF NOT EXISTS watersystem.flow_valve (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-FLOW-VALVE-' || LPAD(object_id::text, 5, '0')) STORED,
    diameter smallint DEFAULT 0,
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_flow_valve (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- INDEX:
CREATE INDEX ON watersystem.flow_valve (object_id);
CREATE INDEX ON watersystem.flow_valve (created_date);
CREATE INDEX ON watersystem.flow_valve (created_user);
CREATE INDEX ON watersystem.flow_valve (last_edited_date);
CREATE INDEX ON watersystem.flow_valve (last_edited_user);
CREATE INDEX ON watersystem.flow_valve USING gist (shape);

-- COMMENT:
COMMENT ON COLUMN watersystem.flow_valve.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.flow_valve.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.flow_valve.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.flow_valve.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.flow_valve.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.flow_valve.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.flow_valve.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.flow_valve.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.flow_valve.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.flow_valve.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.flow_valve.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.flow_valve.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.flow_valve.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.flow_valve.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.flow_valve.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.flow_valve.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.flow_valve.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.flow_valve.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.flow_valve.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.flow_valve.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.flow_valve.last_edited_date IS 'Date and time of the most recent modification to the record';
COMMENT ON COLUMN watersystem.flow_valve.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN watersystem.flow_valve.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN watersystem.flow_valve.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN watersystem.flow_valve.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN watersystem.flow_valve.design_model IS 'Reference to the specific model of the asset';
COMMENT ON COLUMN watersystem.flow_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';
