-- TYPE: adoption_status
CREATE TABLE IF NOT EXISTS types.adoption_status (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_manager
CREATE TABLE IF NOT EXISTS types.asset_manager (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_owner
CREATE TABLE IF NOT EXISTS types.asset_owner (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_structure_boundary_water_pump_station_boundary
CREATE TABLE IF NOT EXISTS types.asset_type_structure_boundary_water_pump_station_boundary (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_structure_boundary_water_storage_boundary
CREATE TABLE IF NOT EXISTS types.asset_type_structure_boundary_water_storage_boundary (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_structure_boundary_water_supply_boundary
CREATE TABLE IF NOT EXISTS types.asset_type_structure_boundary_water_supply_boundary (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_structure_line_pipeline_casing
CREATE TABLE IF NOT EXISTS types.asset_type_structure_line_pipeline_casing (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_assembly_backflow
CREATE TABLE IF NOT EXISTS types.asset_type_water_assembly_backflow (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_fire_hydrant
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_fire_hydrant (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_flow_valve
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_flow_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_flushing_and_blow_off
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_flushing_and_blow_off (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_pressure_valve
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_pressure_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_pump
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_pump (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_service_connection
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_service_connection (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_service_meter
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_service_meter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_service_valve
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_service_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_storage
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_storage (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_supply_welltype
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_supply_welltype (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_system_meter
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_system_meter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_device_system_valve
CREATE TABLE IF NOT EXISTS types.asset_type_water_device_system_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_junction_fitting
CREATE TABLE IF NOT EXISTS types.asset_type_water_junction_fitting (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_line_service
CREATE TABLE IF NOT EXISTS types.asset_type_water_line_service (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: asset_type_water_line_water_main
CREATE TABLE IF NOT EXISTS types.asset_type_water_line_water_main (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: fire_hydrant_assignment_type
CREATE TABLE IF NOT EXISTS types.fire_hydrant_assignment_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: lifecycle
CREATE TABLE IF NOT EXISTS types.lifecycle (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: manufactured_types
CREATE TABLE IF NOT EXISTS types.manufactured_types (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: pipeline_casing_diameter
CREATE TABLE IF NOT EXISTS types.pipeline_casing_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: pipeline_casing_fill_type
CREATE TABLE IF NOT EXISTS types.pipeline_casing_fill_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: pipeline_valve_close_direction
CREATE TABLE IF NOT EXISTS types.pipeline_valve_close_direction (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: pipeline_valve_status
CREATE TABLE IF NOT EXISTS types.pipeline_valve_status (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: spatial_confidence
CREATE TABLE IF NOT EXISTS types.spatial_confidence (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: spatial_source
CREATE TABLE IF NOT EXISTS types.spatial_source (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: water_diameter
CREATE TABLE IF NOT EXISTS types.water_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: water_fire_hydrant_manufacturer
CREATE TABLE IF NOT EXISTS types.water_fire_hydrant_manufacturer (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: water_interconnect_connection_type
CREATE TABLE IF NOT EXISTS types.water_interconnect_connection_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: water_main_material
CREATE TABLE IF NOT EXISTS types.water_main_material (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: water_pump_type
CREATE TABLE IF NOT EXISTS types.water_pump_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: water_service_material
CREATE TABLE IF NOT EXISTS types.water_service_material (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: water_supply_filtration_type
CREATE TABLE IF NOT EXISTS types.water_supply_filtration_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: water_treatment_plant_type
CREATE TABLE IF NOT EXISTS types.water_treatment_plant_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: water_type
CREATE TABLE IF NOT EXISTS types.water_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TYPE: water_valve_type
CREATE TABLE IF NOT EXISTS types.water_valve_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

