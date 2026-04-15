-- TABLE: asset
COMMENT ON COLUMN water_system.asset.global_id IS 'Globally unique identifier fo the feature';

COMMENT ON COLUMN water_system.asset.object_id IS 'Unique identifier for each feature in the layer';

COMMENT ON COLUMN water_system.asset.asset_id IS 'Identifier assigned to the asset for tracking purposes';

COMMENT ON COLUMN water_system.asset.asset_type IS 'Categorization of the type of asset represented by the feature';

COMMENT ON COLUMN water_system.asset.nickname IS 'Name or label assigned to the asset';

COMMENT ON COLUMN water_system.asset.lifecycle_status IS 'Current stage or condition of the asset in its lifecycle';

COMMENT ON COLUMN water_system.asset.install_date IS 'Date when the asset was installed';

COMMENT ON COLUMN water_system.asset.inservice_date IS 'Date when the asset was put into active service';

COMMENT ON COLUMN water_system.asset.retired_date IS 'Date when the asset was retired';

COMMENT ON COLUMN water_system.asset.owned_by IS 'Entity or organization that owns the asset';

COMMENT ON COLUMN water_system.asset.main_by IS 'Entity or organization responsible for maintaining the asset';

COMMENT ON COLUMN water_system.asset.notes IS 'Additional information or comments about the asset';

COMMENT ON COLUMN water_system.asset.spatial_source IS 'Describe the source of spatial data for the assets location';

COMMENT ON COLUMN water_system.asset.spatial_confidence IS 'Level of confidence in the accuracy of the spatial data';

COMMENT ON COLUMN water_system.asset.latitude IS 'Latitude coordinate of the asset';

COMMENT ON COLUMN water_system.asset.longitude IS 'Longitude coordinate of the asset';

COMMENT ON COLUMN water_system.asset.altitude IS 'Altitude of the assets location above sea level';

COMMENT ON COLUMN water_system.asset.created_user IS 'User who created the feature';

COMMENT ON COLUMN water_system.asset.created_date IS 'Date and time when the feature was created';

COMMENT ON COLUMN water_system.asset.last_edited_user IS 'Tracks the user who last edited the record';

COMMENT ON COLUMN water_system.asset.last_edited_date IS 'Date and time of the most recent modification to the record';

-- TABLE: linear_asset
COMMENT ON COLUMN water_system.linear_asset.shape IS 'Geometric representation of the feature';

COMMENT ON COLUMN water_system.linear_asset.shape_length IS 'Length of the geometry associated with the feature';

-- TABLE: polygonal_asset
COMMENT ON COLUMN water_system.polygonal_asset.shape IS 'Geometric representation of the feature';

COMMENT ON COLUMN water_system.polygonal_asset.shape_area IS 'Calculated area of the feature geometry';

COMMENT ON COLUMN water_system.polygonal_asset.shape_length IS 'Calculated perimeter length of the feature geometry';

-- TABLE: punctual_asset
COMMENT ON COLUMN water_system.punctual_asset.shape IS 'Geometric representation of the feature';

COMMENT ON COLUMN water_system.punctual_asset.symbol_rotation IS 'Defines the rotation angle for the assets symbol on the map';

-- TABLE: backflow
COMMENT ON COLUMN water_system.backflow.is_locked IS 'Indicates whether the asset is locked or accessible';

COMMENT ON COLUMN water_system.backflow.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN water_system.backflow.manufacturer IS 'Name of the company that produced the asset';

-- TABLE: fire_hydrant
COMMENT ON COLUMN water_system.fire_hydrant.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN water_system.fire_hydrant.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN water_system.fire_hydrant.diameter IS 'Measurement of the main diameter of the fire hydrnat';

COMMENT ON COLUMN water_system.fire_hydrant.secondary_diameter IS 'Measurement of the nozzle diameter of the fire hydrnat';

COMMENT ON COLUMN water_system.fire_hydrant.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.fire_hydrant.assignment_type IS 'Type of task assigned for the fire hydrant';

COMMENT ON COLUMN water_system.fire_hydrant.assignment_due IS 'Deadline for completing the assigned task';

COMMENT ON COLUMN water_system.fire_hydrant.assigned_on IS 'Date when the task was assigned';

COMMENT ON COLUMN water_system.fire_hydrant.station IS 'Station associated with the assigned task';

COMMENT ON COLUMN water_system.fire_hydrant.shift IS 'Shift associated with the assigned task';

COMMENT ON COLUMN water_system.fire_hydrant.adoption_status IS 'Status indicating whether the fire hydrant is adopted';

COMMENT ON COLUMN water_system.fire_hydrant.public_view IS 'Visibility of the fire hydrant to the public';

COMMENT ON COLUMN water_system.fire_hydrant.adopted_by IS 'Person or entity that adopted the fire hydrant';

COMMENT ON COLUMN water_system.fire_hydrant.adopted_on IS 'Date when the fire fire hydrant was adopted';

-- TABLE: fitting
COMMENT ON COLUMN water_system.fitting.diameter IS 'Measurement of the fittings diameter';

COMMENT ON COLUMN water_system.fitting.secondary_diameter IS 'Measurement of the nozzle diameter of the fire hydrnat';

-- TABLE: flow_valve
COMMENT ON COLUMN water_system.flow_valve.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN water_system.flow_valve.design_model IS 'Reference to the specific model of the asset';

COMMENT ON COLUMN water_system.flow_valve.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN water_system.flow_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';

-- TABLE: flushing_and_blow_off
COMMENT ON COLUMN water_system.flushing_and_blow_off.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN water_system.flushing_and_blow_off.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN water_system.flushing_and_blow_off.last_maint IS 'Date of the most recent maintenance performed on the asset';

-- TABLE: interconnect
COMMENT ON COLUMN water_system.interconnect.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.interconnect.permitted_flow IS 'Maximum flow rate allowed for the asset';

COMMENT ON COLUMN water_system.interconnect.avaible_flow IS 'Flow rate currently available for use';

COMMENT ON COLUMN water_system.interconnect.emergency IS 'Indicates if the asset is for emergency use only';

-- TABLE: pipe_casing
COMMENT ON COLUMN water_system.pipe_casing.fill_type IS 'Material used to fill the pipe casing';

COMMENT ON COLUMN water_system.pipe_casing.diameter IS 'Measurement of the width of the pipe casing';

COMMENT ON COLUMN water_system.pipe_casing.measured_length IS 'Length of the pipe casing as measured in the field';

-- TABLE: pressure_valve
COMMENT ON COLUMN water_system.pressure_valve.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN water_system.pressure_valve.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN water_system.pressure_valve.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN water_system.pressure_valve.pressure IS 'Pressure rating or capacity of the valve';

COMMENT ON COLUMN water_system.pressure_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';

-- TABLE: pump
COMMENT ON COLUMN water_system.pump.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN water_system.pump.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN water_system.pump.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.pump.diameter IS 'Measurement of the inlet diameter of the pump';

COMMENT ON COLUMN water_system.pump.secondary_diameter IS 'Measurement od the outlet diameter of the pump';

COMMENT ON COLUMN water_system.pump.pressure IS 'Maximum pressure rating for the pump';

COMMENT ON COLUMN water_system.pump.design_type IS 'Classification of the pump based on its design';

COMMENT ON COLUMN water_system.pump.design_info IS 'Flow rate specification fot the pump';

COMMENT ON COLUMN water_system.pump.operable IS 'Indicates whether the pump is functional';

-- TABLE: sample_station
COMMENT ON COLUMN water_system.sample_station.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.sample_station.station_location IS 'Location of the sample station';

-- TABLE: service
COMMENT ON COLUMN water_system.service.design_type IS 'Classification of the water type associated with the asset';

COMMENT ON COLUMN water_system.service.material IS 'Composition of the assets construction material';

COMMENT ON COLUMN water_system.service.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN water_system.service.measured_length IS 'Length of the pipe casing as measured in the field';

COMMENT ON COLUMN water_system.service.tracer_wire IS 'Indicates whether tracer wire is present';

-- TABLE: service_connection
COMMENT ON COLUMN water_system.service_connection.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.service_connection.account_id IS 'Identifierassociated with the account linked to the service connection';

COMMENT ON COLUMN water_system.service_connection.critical IS 'Indicates whether the service connection is critical';

COMMENT ON COLUMN water_system.service_connection.metered IS 'Specifies if the service connection is metered';

-- TABLE: service_meter
COMMENT ON COLUMN water_system.service_meter.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN water_system.service_meter.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN water_system.service_meter.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.service_meter.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN water_system.service_meter.account_id IS 'Identifierassociated with the account linked to the service connection';

-- TABLE: service_territory
-- TABLE: service_valve
COMMENT ON COLUMN water_system.service_valve.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN water_system.service_valve.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN water_system.service_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.service_valve.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN water_system.service_valve.design_type IS 'Classification of the valve design';

COMMENT ON COLUMN water_system.service_valve.valve_status IS 'Current operational status of the valve';

COMMENT ON COLUMN water_system.service_valve.clockwise_to_close IS 'Indicates the direction required to close the valve';

COMMENT ON COLUMN water_system.service_valve.turns_to_close IS 'Number of turns needed to close de valve';

COMMENT ON COLUMN water_system.service_valve.operable IS 'Indicates whether the asset is functional';

COMMENT ON COLUMN water_system.service_valve.post_indicator_valve IS 'Specifies if the valve has as post-indicator';

-- TABLE: storage
COMMENT ON COLUMN water_system.storage.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.storage.height IS 'Vertical measurement of the storage asset';

COMMENT ON COLUMN water_system.storage.width IS 'Horizontal measurement of the storage asset';

COMMENT ON COLUMN water_system.storage.volume IS 'Capacity or volume of the storage asset';

-- TABLE: system_meter
COMMENT ON COLUMN water_system.system_meter.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN water_system.system_meter.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN water_system.system_meter.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.system_meter.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN water_system.system_meter.account_id IS 'Identifier for the account associated with the asset';

-- TABLE: system_valve
COMMENT ON COLUMN water_system.system_valve.manufacturer IS 'Name of the company that produced the asset';

COMMENT ON COLUMN water_system.system_valve.design_model IS 'Specific model designation of the asset';

COMMENT ON COLUMN water_system.system_valve.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.system_valve.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN water_system.system_valve.design_type IS 'Classification of the valve design';

COMMENT ON COLUMN water_system.system_valve.valve_status IS 'Current operational status of the valve';

COMMENT ON COLUMN water_system.system_valve.clockwise_to_close IS 'Indicates the direction required to close the valve';

COMMENT ON COLUMN water_system.system_valve.turns_to_close IS 'Number of turns needed to close de valve';

COMMENT ON COLUMN water_system.system_valve.operable IS 'Indicates whether the asset is functional';

COMMENT ON COLUMN water_system.system_valve.has_bypass IS 'Indicate if the valve includes a bypass feature';

-- TABLE: well
COMMENT ON COLUMN water_system.well.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.well.filtration_type IS 'Indicates the type of filtration system used for water treatment';

COMMENT ON COLUMN water_system.well.bore_depth IS 'Represents the depth of the borehole in meters';

COMMENT ON COLUMN water_system.well.aquiler_depth IS 'Specifies the depth at which the aquifer is located';

COMMENT ON COLUMN water_system.well.permitted_flow IS 'Defines the maximum flow rate allowed for the well';

COMMENT ON COLUMN water_system.well.available_flow IS 'Indicates the current flow rate available from the well';

-- TABLE: water_supply_boundary
-- TABLE: water_storage_boundary
-- TABLE: water_pump_station_boundary
-- TABLE: treatment_plant
COMMENT ON COLUMN water_system.treatment_plant.last_maint IS 'Date of the most recent maintenance performed on the asset';

COMMENT ON COLUMN water_system.treatment_plant.permitted_capacity IS 'Maximunm capacity allowed for the treatment plant';

COMMENT ON COLUMN water_system.treatment_plant.rated_capacity IS 'Designed operational capacity of the treatment plant';

COMMENT ON COLUMN water_system.treatment_plant.average_daily_flow IS 'Average daily water flow processed by the treatment plant';

COMMENT ON COLUMN water_system.treatment_plant.filtration_type IS 'Type of filtration system used in the treatment plant';

-- TABLE: water_main
COMMENT ON COLUMN water_system.water_main.design_type IS 'Classification of the water type associated with the asset';

COMMENT ON COLUMN water_system.water_main.material IS 'Composition of the assets construction material';

COMMENT ON COLUMN water_system.water_main.diameter IS 'Measurement of the assets diameter';

COMMENT ON COLUMN water_system.water_main.measured_length IS 'Length of the pipe casing as measured in the field';

COMMENT ON COLUMN water_system.water_main.tracer_wire IS 'Indicates whether tracer wire is present';

