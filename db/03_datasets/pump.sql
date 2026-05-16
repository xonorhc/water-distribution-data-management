-- TABLE: pump
CREATE TABLE IF NOT EXISTS watersystem.pump (
    object_id serial,
    asset_id varchar(64) GENERATED ALWAYS AS ('WS-PUMP-' || LPAD(object_id::text, 5, '0')) STORED,
    inlet_diameter smallint DEFAULT 0,
    outlet_diameter smallint DEFAULT 0,
    rated_pressure numeric,
    manufacturer smallint,
    design_model bigint,
    pump_type smallint DEFAULT 0,
    rated_flow numeric,
    operable boolean DEFAULT TRUE,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_pump (code),
    FOREIGN KEY (inlet_diameter) REFERENCES domains.water_pump_diameter (code),
    FOREIGN KEY (outlet_diameter) REFERENCES domains.water_pump_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code),
    FOREIGN KEY (pump_type) REFERENCES domains.water_pump_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- INDEX:
CREATE INDEX ON watersystem.pump (object_id);
CREATE INDEX ON watersystem.pump (created_date);
CREATE INDEX ON watersystem.pump (created_user);
CREATE INDEX ON watersystem.pump (last_edited_date);
CREATE INDEX ON watersystem.pump (last_edited_user);
CREATE INDEX ON watersystem.pump USING gist (shape);

-- COMMENT:
COMMENT ON COLUMN watersystem.pump.global_id IS 'Globally unique identifier fo the feature';
COMMENT ON COLUMN watersystem.pump.object_id IS 'Unique identifier for each feature in the layer';
COMMENT ON COLUMN watersystem.pump.asset_id IS 'Identifier assigned to the asset for tracking purposes';
COMMENT ON COLUMN watersystem.pump.asset_type IS 'Categorization of the type of asset represented by the feature';
COMMENT ON COLUMN watersystem.pump.nickname IS 'Name or label assigned to the asset';
COMMENT ON COLUMN watersystem.pump.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';
COMMENT ON COLUMN watersystem.pump.install_date IS 'Date when the asset was installed';
COMMENT ON COLUMN watersystem.pump.inservice_date IS 'Date when the asset was put into active service';
COMMENT ON COLUMN watersystem.pump.retired_date IS 'Date when the asset was retired';
COMMENT ON COLUMN watersystem.pump.owned_by IS 'Entity or organization that owns the asset';
COMMENT ON COLUMN watersystem.pump.main_by IS 'Entity or organization responsible for maintaining the asset';
COMMENT ON COLUMN watersystem.pump.notes IS 'Additional information or comments about the asset';
COMMENT ON COLUMN watersystem.pump.spatial_source IS 'Describe the source of spatial data for the assets location';
COMMENT ON COLUMN watersystem.pump.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';
COMMENT ON COLUMN watersystem.pump.latitude IS 'Latitude coordinate of the asset';
COMMENT ON COLUMN watersystem.pump.longitude IS 'Longitude coordinate of the asset';
COMMENT ON COLUMN watersystem.pump.altitude IS 'Altitude of the assets location above sea level';
COMMENT ON COLUMN watersystem.pump.created_user IS 'User who created the feature';
COMMENT ON COLUMN watersystem.pump.created_date IS 'Date and time when the feature was created';
COMMENT ON COLUMN watersystem.pump.last_edited_user IS 'Tracks the user who last edited the record';
COMMENT ON COLUMN watersystem.pump.last_edited_date IS 'Date and time of the most recent modification to the record';
COMMENT ON COLUMN watersystem.pump.shape IS 'Geometric representation of the feature';
COMMENT ON COLUMN watersystem.pump.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';
COMMENT ON COLUMN watersystem.pump.inlet_diameter IS 'Measurement of the inlet diameter of the pump';
COMMENT ON COLUMN watersystem.pump.outlet_diameter IS 'Measurement od the outlet diameter of the pump';
COMMENT ON COLUMN watersystem.pump.rated_pressure IS 'Maximum pressure rating for the pump';
COMMENT ON COLUMN watersystem.pump.manufacturer IS 'Name of the company that produced the asset';
COMMENT ON COLUMN watersystem.pump.design_model IS 'Specific model designation of the asset';
COMMENT ON COLUMN watersystem.pump.last_maint IS 'Date of the most recent maintenance performed on the asset';
COMMENT ON COLUMN watersystem.pump.pump_type IS 'Classification of the pump based on its design';
COMMENT ON COLUMN watersystem.pump.rated_flow IS 'Flow rate specification fot the pump';
COMMENT ON COLUMN watersystem.pump.operable IS 'Indicates whether the pump is functional';
