-- TABLE: asset.sql
COMMENT ON COLUMN asset.global_id IS 'Globally unique identifier fo the feature';

COMMENT ON COLUMN asset.object_id IS 'Unique identifier for each feature in the layer';

COMMENT ON COLUMN asset.asset_id IS 'Identifier assigned to the asset for tracking purposes';

COMMENT ON COLUMN asset.asset_type IS 'Categorization of the type of asset represented by the feature';

COMMENT ON COLUMN asset.nickname IS 'Name or label assigned to the asset';

COMMENT ON COLUMN asset.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';

COMMENT ON COLUMN asset.install_date IS 'Date when the asset was installed';

COMMENT ON COLUMN asset.inservice_date IS 'Date when the asset was put into active service';

COMMENT ON COLUMN asset.retired_date IS 'Date when the asset was retired';

COMMENT ON COLUMN asset.owned_by IS 'Entity or organization that owns the asset';

COMMENT ON COLUMN asset.main_by IS 'Entity or organization responsible for maintaining the asset';

COMMENT ON COLUMN asset.notes IS 'Additional information or comments about the asset';

COMMENT ON COLUMN asset.spatial_source IS 'Describe the source of spatial data for the assets location';

COMMENT ON COLUMN asset.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';

COMMENT ON COLUMN asset.latitude IS 'Latitude coordinate of the asset';

COMMENT ON COLUMN asset.longitude IS 'Longitude coordinate of the asset';

COMMENT ON COLUMN asset.altitude IS 'Altitude of the assets location above sea level';

COMMENT ON COLUMN asset.created_user IS 'User who created the feature';

COMMENT ON COLUMN asset.created_date IS 'Date and time when the feature was created';

COMMENT ON COLUMN asset.last_edited_user IS 'Tracks the user who last edited the record';

COMMENT ON COLUMN asset.last_edited_date IS 'Date and time of the most recent modification to the record';

-- TABLE: linear_asset.sql
COMMENT ON COLUMN linear_asset.shape IS 'Geometric representation of the feature';

COMMENT ON COLUMN linear_asset.shape_length IS 'Length of the geometry associated with the feature';

-- TABLE: polygonal_asset.sql
COMMENT ON COLUMN polygonal_asset.shape IS 'Geometric representation of the feature';

COMMENT ON COLUMN polygonal_asset.shape_area IS 'Calculated area of the feature geometry';

COMMENT ON COLUMN polygonal_asset.shape_length IS 'Calculated perimeter length of the feature geometry';

-- TABLE: punctual_asset.sql
COMMENT ON COLUMN punctual_asset.shape IS 'Geometric representation of the feature';

COMMENT ON COLUMN punctual_asset.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';

-- TABLE: backflow.sql
COMMENT ON COLUMN backflow.is_locked IS 'Indicates whether the asset is locked or accessible';

COMMENT ON COLUMN backflow.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN backflow.manufacturer IS 'Name of the company that produced the asset';

-- TABLE: fire_hydrant.sql
COMMENT ON COLUMN fire_hydrant.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN fire_hydrant.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN fire_hydrant.diameter IS 'Measurement of the main diameter of the fire hydrnat';

COMMENT ON COLUMN fire_hydrant.secondary_diameter IS 'Measurement of the nozzle diameter of the fire hydrnat';

COMMENT ON COLUMN fire_hydrant.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN fire_hydrant.assignment_type IS 'Type of task assigned for the fire hydrant';

COMMENT ON COLUMN fire_hydrant.assignment_due IS 'Deadline for completing the assigned task';

COMMENT ON COLUMN fire_hydrant.assigned_on IS 'Date when the task was assigned';

COMMENT ON COLUMN fire_hydrant.station IS 'Station associated with the assigned task';

COMMENT ON COLUMN fire_hydrant.shift IS 'Shift associated with the assigned task';

COMMENT ON COLUMN fire_hydrant.adoption_status IS 'Status indicating whether the fire hydrant is adopted';

COMMENT ON COLUMN fire_hydrant.public_view IS 'Visibility of the fire hydrant to the public';

COMMENT ON COLUMN fire_hydrant.adopted_by IS 'Person or entity that adopted the fire hydrant';

COMMENT ON COLUMN fire_hydrant.adopted_on IS 'Date when the fire fire hydrant was adopted';

-- TABLE: fitting.sql
COMMENT ON COLUMN fitting.diameter IS 'Measurement of the fittings diameter';

COMMENT ON COLUMN fitting.secondary_diameter IS 'Measurement of the nozzle diameter of the fire hydrnat';

-- TABLE: flow_valve.sql
COMMENT ON COLUMN flow_valve.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN flow_valve.design_model IS 'Reference to the specific model of the asset';

COMMENT ON COLUMN flow_valve.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN flow_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';

-- TABLE: flushing_and_blow_off.sql
COMMENT ON COLUMN flushing_and_blow_off.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN flushing_and_blow_off.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN flushing_and_blow_off.last_maint IS 'Date of the most recent maintenance performed on the asset';

-- TABLE: interconnect.sql
COMMENT ON COLUMN interconnect.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN interconnect.permitted_flow IS 'Maximum flow rate allowed for the asset';

COMMENT ON COLUMN interconnect.avaible_flow IS 'Flow rate currently available for use';

COMMENT ON COLUMN interconnect.emergency IS 'Indicates if the asset is for emergency use only';

-- TABLE: pipe_casing.sql
COMMENT ON COLUMN pipe_casing.fill_type IS 'Material used to fill the pipe casing';

COMMENT ON COLUMN pipe_casing.diameter IS 'Measurement of the width of the pipe casing';

COMMENT ON COLUMN pipe_casing.measured_length IS 'Length of the pipe casing as measured in the field';

-- TABLE: pressure_valve.sql
COMMENT ON COLUMN pressure_valve.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN pressure_valve.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN pressure_valve.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN pressure_valve.pressure IS 'Pressure rating or capacity of the valve';

COMMENT ON COLUMN pressure_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';

-- TABLE: pump.sql
COMMENT ON COLUMN pump.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN pump.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN pump.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN pump.diameter IS 'Measurement of the inlet diameter of the pump';

COMMENT ON COLUMN pump.secondary_diameter IS 'Measurement od the outlet diameter of the pump';

COMMENT ON COLUMN pump.pressure IS 'Maximum pressure rating for the pump';

COMMENT ON COLUMN pump.design_type IS 'Classification of the pump based on its design';

COMMENT ON COLUMN pump.design_info IS 'Flow rate specification fot the pump';

COMMENT ON COLUMN pump.operable IS 'Indicates whether the pump is functional';

-- TABLE: sample_station.sql
COMMENT ON COLUMN sample_station.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN sample_station.station_location IS 'Location of the sample station';

-- TABLE: service.sql
COMMENT ON COLUMN service.design_type IS 'Classification of the water type associated with the asset';

COMMENT ON COLUMN service.material IS 'Composition of the assets construction material';

COMMENT ON COLUMN service.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN service.measured_length IS 'Length of the pipe casing as measured in the field';

COMMENT ON COLUMN service.tracer_wire IS 'Indicates whether tracer wire is present';

-- TABLE: service_connection.sql
COMMENT ON COLUMN service_connection.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN service_connection.account_id IS 'Identifierassociated with the account linked to the service connection';

COMMENT ON COLUMN service_connection.critical IS 'Indicates whether the service connection is critical';

COMMENT ON COLUMN service_connection.metered IS 'Specifies if the service connection is metered';

-- TABLE: service_meter.sql
COMMENT ON COLUMN service_meter.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN service_meter.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN service_meter.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN service_meter.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN service_meter.account_id IS 'Identifierassociated with the account linked to the service connection';

-- TABLE: service_territory.sql
-- TABLE: service_valve.sql
COMMENT ON COLUMN service_valve.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN service_valve.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN service_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN service_valve.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN service_valve.design_type IS 'Classification of the valve design';

COMMENT ON COLUMN service_valve.valve_status IS 'Current operational status of the valve';

COMMENT ON COLUMN service_valve.clockwise_to_close IS 'Indicates the direction required to close the valve';

COMMENT ON COLUMN service_valve.turns_to_close IS 'Number of turns needed to close de valve';

COMMENT ON COLUMN service_valve.operable IS 'Indicates whether the asset is functional';

COMMENT ON COLUMN service_valve.post_indicator_valve IS 'Specifies if the valve has as post-indicator';

-- TABLE: storage.sql
COMMENT ON COLUMN storage.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN storage.height IS 'Vertical measurement of the storage asset';

COMMENT ON COLUMN storage.width IS 'Horizontal measurement of the storage asset';

COMMENT ON COLUMN storage.volume IS 'Capacity or volume of the storage asset';

-- TABLE: system_meter.sql
COMMENT ON COLUMN system_meter.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN system_meter.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN system_meter.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN system_meter.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN system_meter.account_id IS 'Identifier for the account associated with the asset';

-- TABLE: system_valve.sql
COMMENT ON COLUMN system_valve.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN system_valve.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN system_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN system_valve.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN system_valve.design_type IS 'Classification of the valve design';

COMMENT ON COLUMN system_valve.valve_status IS 'Current operational status of the valve';

COMMENT ON COLUMN system_valve.clockwise_to_close IS 'Indicates the direction required to close the valve';

COMMENT ON COLUMN system_valve.turns_to_close IS 'Number of turns needed to close de valve';

COMMENT ON COLUMN system_valve.operable IS 'Indicates whether the asset is functional';

COMMENT ON COLUMN system_valve.has_bypass IS 'Indicate if the valve includes a bypass feature';

-- TABLE: well.sql
COMMENT ON COLUMN well.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN well.filtration_type IS 'Indicates the type of filtration system used for water treatment';

COMMENT ON COLUMN well.bore_depth IS 'Represents the depth of the borehole in meters';

COMMENT ON COLUMN well.aquiler_depth IS 'Specifies the depth at which the aquifer is located';

COMMENT ON COLUMN well.permitted_flow IS 'Defines the maximum flow rate allowed for the well';

COMMENT ON COLUMN well.available_flow IS 'Indicates the current flow rate available from the well';

-- TABLE: water_supply_boundary.sql
-- TABLE: water_storage_boundary.sql
-- TABLE: water_pump_station_boundary.sql
-- TABLE: treatment_plant.sql
COMMENT ON COLUMN treatment_plant.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN treatment_plant.permitted_capacity IS 'Maximunm capacity allowed for the treatment plant';

COMMENT ON COLUMN treatment_plant.rated_capacity IS 'Designed operational capacity of the treatment plant';

COMMENT ON COLUMN treatment_plant.average_daily_flow IS 'Average daily water flow processed by the treatment plant';

COMMENT ON COLUMN treatment_plant.filtration_type IS 'Type of filtration system used in the treatment plant';

-- TABLE: water_main.sql
COMMENT ON COLUMN water_main.design_type IS 'Classification of the water type associated with the asset';

COMMENT ON COLUMN water_main.material IS 'Composition of the assets construction material';

COMMENT ON COLUMN water_main.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN water_main.measured_length IS 'Length of the pipe casing as measured in the field';

COMMENT ON COLUMN water_main.tracer_wire IS 'Indicates whether tracer wire is present';

