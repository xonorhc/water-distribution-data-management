-- TABLE: system_valve
CREATE TABLE IF NOT EXISTS watersystem.system_valve (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-SYSTEM-VALVE-' || LPAD(object_id::text, 5, '0')) STORED,
    diameter smallint DEFAULT 0,
    manufacturer smallint,
    design_model bigint,
    valve_type smallint DEFAULT 0,
    valve_status smallint DEFAULT 1,
    clockwise_to_close smallint,
    turns_to_close numeric,
    operable boolean DEFAULT TRUE,
    has_bypass boolean DEFAULT FALSE,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_system_valve (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code),
    FOREIGN KEY (valve_type) REFERENCES domains.water_valve_type (code),
    FOREIGN KEY (valve_status) REFERENCES domains.pipeline_valve_status (code),
    FOREIGN KEY (clockwise_to_close) REFERENCES domains.pipeline_valve_close_direction (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- INDEX:
CREATE INDEX ON watersystem.system_valve (object_id);
CREATE INDEX ON watersystem.system_valve (created_date);
CREATE INDEX ON watersystem.system_valve (created_user);
CREATE INDEX ON watersystem.system_valve (last_edited_date);
CREATE INDEX ON watersystem.system_valve (last_edited_user);
CREATE INDEX ON watersystem.system_valve USING gist (shape);

-- COMMENT:
COMMENT ON COLUMN watersystem.system_valve.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.system_valve.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.system_valve.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.system_valve.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.system_valve.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.system_valve.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.system_valve.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.system_valve.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.system_valve.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.system_valve.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.system_valve.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.system_valve.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.system_valve.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.system_valve.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.system_valve.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.system_valve.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.system_valve.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.system_valve.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.system_valve.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.system_valve.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.system_valve.last_edited_date IS 'Date and time of the most recent modification to the record';
COMMENT ON COLUMN watersystem.system_valve.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN watersystem.system_valve.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN watersystem.system_valve.diameter IS 'Measurement of the assets diameter';
COMMENT ON COLUMN watersystem.system_valve.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN watersystem.system_valve.design_model IS 'Specific model designation of the asset';
COMMENT ON COLUMN watersystem.system_valve.valve_type IS 'Classification of the valve design';
COMMENT ON COLUMN watersystem.system_valve.valve_status IS 'Current operational status of the valve';
COMMENT ON COLUMN watersystem.system_valve.clockwise_to_close IS 'Indicates the direction required to close the valve';
COMMENT ON COLUMN watersystem.system_valve.turns_to_close IS 'Number of turns needed to close de valve';
COMMENT ON COLUMN watersystem.system_valve.operable IS 'Indicates whether the asset is functional';
COMMENT ON COLUMN watersystem.system_valve.has_bypass IS 'Indicate if the valve includes a bypass feature';
COMMENT ON COLUMN watersystem.system_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';
