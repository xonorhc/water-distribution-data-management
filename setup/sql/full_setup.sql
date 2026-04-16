-- Auto-generated SQL setup file
-- Generated at Thu Apr 16 01:58:35 PM -04 2026
-- FILE: ../../db/schema/00_extensions.sql
CREATE EXTENSION IF NOT EXISTS postgis;

-- FILE: ../../db/schema/01_schemas.sql
CREATE SCHEMA IF NOT EXISTS types;

CREATE SCHEMA IF NOT EXISTS water_system;

-- FILE: ../../db/schema/02_types.sql
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

-- FILE: ../../db/schema/03_tables.sql
-- TABLE: asset
CREATE SEQUENCE IF NOT EXISTS water_system.asset_global_id_seq AS bigint;

CREATE TABLE IF NOT EXISTS water_system.asset (
    -- Globally unique identifier
    global_id bigint DEFAULT NEXTVAL('water_system.asset_global_id_seq'),
    -- Unique identifier
    object_id integer,
    asset_id varchar(64),
    asset_type smallint,
    nickname varchar(64),
    -- Current stage
    lifecycle_status smallint NOT NULL DEFAULT 4,
    install_date date,
    inservice_date date,
    retired_date date,
    owned_by smallint DEFAULT 1,
    main_by smallint DEFAULT 1,
    notes varchar(2000),
    -- Spatial data
    spatial_source smallint,
    spatial_confidence smallint,
    latitude numeric(9, 7),
    longitude numeric(9, 7),
    altitude numeric(6, 3),
    -- Tracks edited the record
    created_user varchar(255),
    created_date timestamp,
    last_edited_user varchar(255),
    last_edited_date timestamp,
    -- Constraints
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
);

ALTER SEQUENCE water_system.asset_global_id_seq OWNED BY water_system.asset.global_id;

-- TABLE: punctual_asset
CREATE TABLE IF NOT EXISTS water_system.punctual_asset (
    -- New properties
    shape GEOMETRY(POINTZ, 4326),
    symbol_rotation smallint CHECK (symbol_rotation BETWEEN 0 AND 360) DEFAULT 0,
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.asset
);

-- TABLE: linear_asset
CREATE TABLE IF NOT EXISTS water_system.linear_asset (
    -- New properties
    shape GEOMETRY(LINESTRINGZ, 4326),
    shape_length numeric GENERATED ALWAYS AS ((ST_LENGTH (shape))::numeric(8, 2)) STORED,
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.asset
);

-- TABLE: polygonal_asset
CREATE TABLE IF NOT EXISTS water_system.polygonal_asset (
    -- New properties
    shape GEOMETRY(POLYGONZ, 4326),
    shape_area numeric GENERATED ALWAYS AS ((ST_AREA (shape))::numeric(8, 2)) STORED,
    shape_length numeric GENERATED ALWAYS AS ((ST_PERIMETER (shape))::numeric(8, 2)) STORED,
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.asset
);

-- TABLE: backflow
CREATE TABLE IF NOT EXISTS water_system.backflow (
    -- New properties
    manufacturer smallint,
    design_model bigint,
    is_locked boolean,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Backflow',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_assembly_backflow (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: fire_hydrant
CREATE TABLE IF NOT EXISTS water_system.fire_hydrant (
    -- New properties
    manufacturer bigint,
    design_model bigint,
    diameter smallint CHECK (diameter BETWEEN 100 AND 250),
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 65 AND 150),
    last_maint date,
    assignment_type smallint,
    assignment_due date,
    assigned_on date,
    station varchar(64),
    shift varchar(64),
    public_view boolean,
    adoption_status smallint,
    adopted_by varchar(64),
    adopted_on date,
    FOREIGN KEY (manufacturer) REFERENCES types.water_fire_hydrant_manufacturer (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (assignment_type) REFERENCES types.fire_hydrant_assignment_type (code),
    FOREIGN KEY (adoption_status) REFERENCES types.adoption_status (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Fire Hydrant',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_fire_hydrant (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: fitting
CREATE TABLE IF NOT EXISTS water_system.fitting (
    -- New properties
    diameter smallint CHECK (diameter BETWEEN 15 AND 1200),
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 15 AND 1200),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES types.water_diameter (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Fitting',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_junction_fitting (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: flow_valve
CREATE TABLE IF NOT EXISTS water_system.flow_valve (
    -- New properties
    manufacturer smallint,
    design_model bigint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    last_maint date,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Flow Valve',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_flow_valve (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: flushing_and_blow_off
CREATE TABLE IF NOT EXISTS water_system.flushing_and_blow_off (
    -- New properties
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Flushing and Blow Off',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_flushing_and_blow_off (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: interconnect
CREATE TABLE IF NOT EXISTS water_system.interconnect (
    -- New properties
    last_maint date,
    permitted_flow numeric,
    avaible_flow numeric,
    emergency boolean,
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Interconnect',
    FOREIGN KEY (asset_type) REFERENCES types.water_interconnect_connection_type (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: pipe_casing
CREATE TABLE IF NOT EXISTS water_system.pipe_casing (
    -- New properties
    fill_type smallint,
    diameter smallint,
    measured_length numeric(8, 2) CHECK (measured_length > 0),
    FOREIGN KEY (diameter) REFERENCES types.pipeline_casing_diameter (code),
    FOREIGN KEY (fill_type) REFERENCES types.pipeline_casing_fill_type (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pipe Casing',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_structure_line_pipeline_casing (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.linear_asset
);

-- TABLE: pressure_valve
CREATE TABLE IF NOT EXISTS water_system.pressure_valve (
    -- New properties
    manufacturer smallint,
    design_model bigint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    pressure numeric,
    last_maint date,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pressure Valve',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_pressure_valve (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: pump
CREATE TABLE IF NOT EXISTS water_system.pump (
    -- New properties
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 100 AND 1200),
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 100 AND 1200),
    pressure numeric,
    design_type smallint,
    design_info numeric,
    operable boolean,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES types.water_pump_type (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pump',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_pump (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: sample_station
CREATE TABLE IF NOT EXISTS water_system.sample_station (
    -- New properties
    last_maint date,
    station_location varchar(255),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Sample Station',
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: service
CREATE TABLE IF NOT EXISTS water_system.service (
    -- New properties
    design_type smallint,
    material smallint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 250),
    measured_length numeric(8, 2) CHECK (measured_length > 0),
    tracer_wire boolean,
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (material) REFERENCES types.water_service_material (code),
    FOREIGN KEY (design_type) REFERENCES types.water_type (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_line_service (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.linear_asset
);

-- TABLE: service_connection
CREATE TABLE IF NOT EXISTS water_system.service_connection (
    -- New properties
    last_maint date,
    account_id varchar(50),
    critical boolean DEFAULT FALSE,
    metered boolean DEFAULT FALSE,
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service Connection',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_service_connection (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: service_meter
CREATE TABLE IF NOT EXISTS water_system.service_meter (
    -- New properties
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 20 AND 600),
    account_id varchar(50),
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service Meter',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_service_meter (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: service_territory
CREATE TABLE IF NOT EXISTS water_system.service_territory (
    -- New properties
    -- Polymorphism
    object_id serial,
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.polygonal_asset
);

-- TABLE: service_valve
CREATE TABLE IF NOT EXISTS water_system.service_valve (
    -- New properties
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    design_type smallint,
    valve_status smallint,
    clockwise_to_close smallint,
    turns_to_close numeric,
    operable boolean DEFAULT TRUE,
    post_indicator_valve boolean DEFAULT FALSE,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES types.water_valve_type (code),
    FOREIGN KEY (valve_status) REFERENCES types.pipeline_valve_status (code),
    FOREIGN KEY (clockwise_to_close) REFERENCES types.pipeline_valve_close_direction (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service Valve',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_service_valve (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: storage
CREATE TABLE IF NOT EXISTS water_system.storage (
    -- New properties
    last_maint date,
    height numeric,
    width numeric,
    volume numeric,
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Storage',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_storage (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: system_meter
CREATE TABLE IF NOT EXISTS water_system.system_meter (
    -- New properties
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 20 AND 600),
    account_id varchar(50),
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'System Meter',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_system_meter (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: system_valve
CREATE TABLE IF NOT EXISTS water_system.system_valve (
    -- New properties
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    design_type smallint,
    valve_status smallint,
    clockwise_to_close smallint,
    turns_to_close numeric,
    operable boolean,
    has_bypass boolean,
    FOREIGN KEY (manufacturer) REFERENCES types.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES types.water_valve_type (code),
    FOREIGN KEY (valve_status) REFERENCES types.pipeline_valve_status (code),
    FOREIGN KEY (clockwise_to_close) REFERENCES types.pipeline_valve_close_direction (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'System Valve',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_system_valve (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: well
CREATE TABLE IF NOT EXISTS water_system.well (
    -- New properties
    last_maint date,
    filtration_type smallint,
    bore_depth numeric,
    aquiler_depth numeric,
    permitted_flow numeric,
    available_flow numeric,
    FOREIGN KEY (filtration_type) REFERENCES types.water_supply_filtration_type (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Well',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_device_supply_welltype (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: water_supply_boundary
CREATE TABLE IF NOT EXISTS water_system.water_supply_boundary (
    -- New properties
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Supply Boundary',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_structure_boundary_water_supply_boundary (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.polygonal_asset
);

-- TABLE: water_storage_boundary
CREATE TABLE IF NOT EXISTS water_system.water_storage_boundary (
    -- New properties
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Storage Boundary',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_structure_boundary_water_storage_boundary (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.polygonal_asset
);

-- TABLE: water_pump_station_boundary
CREATE TABLE IF NOT EXISTS water_system.water_pump_station_boundary (
    -- New properties
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Pump Station Boundary',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_structure_boundary_water_pump_station_boundary (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.polygonal_asset
);

-- TABLE: treatment_plant
CREATE TABLE IF NOT EXISTS water_system.treatment_plant (
    -- New properties
    last_maint date,
    permitted_capacity numeric,
    rated_capacity numeric,
    average_daily_flow numeric,
    filtration_type smallint,
    FOREIGN KEY (filtration_type) REFERENCES types.water_supply_filtration_type (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Treatment Plant',
    FOREIGN KEY (asset_type) REFERENCES types.water_treatment_plant_type (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: water_main
CREATE TABLE IF NOT EXISTS water_system.water_main (
    -- New properties
    design_type smallint,
    material smallint,
    diameter smallint CHECK (diameter BETWEEN 100 AND 1900),
    measured_length numeric(8, 2),
    tracer_wire boolean,
    FOREIGN KEY (diameter) REFERENCES types.water_diameter (code),
    FOREIGN KEY (material) REFERENCES types.water_main_material (code),
    FOREIGN KEY (design_type) REFERENCES types.water_type (code),
    -- Polymorphism
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Main',
    FOREIGN KEY (asset_type) REFERENCES types.asset_type_water_line_water_main (code),
    -- NOTE: Fixed limitation of the inheritance feature
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES types.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES types.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES types.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES types.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES types.spatial_confidence (code)
)
INHERITS (
    water_system.linear_asset
);

-- FILE: ../../db/schema/04_indexes.sql
-- TABLE: backflow
CREATE INDEX ON water_system.backflow USING gist (shape);

-- TABLE: fire_hydrant
CREATE INDEX ON water_system.fire_hydrant USING gist (shape);

-- TABLE: fitting
CREATE INDEX ON water_system.fitting USING gist (shape);

-- TABLE: flow_valve
CREATE INDEX ON water_system.flow_valve USING gist (shape);

-- TABLE: flushing_and_blow_off
CREATE INDEX ON water_system.flushing_and_blow_off USING gist (shape);

-- TABLE: interconnect
CREATE INDEX ON water_system.interconnect USING gist (shape);

-- TABLE: pipe_casing
CREATE INDEX ON water_system.pipe_casing USING gist (shape);

CREATE INDEX ON water_system.pipe_casing (shape_length);

-- TABLE: pressure_valve
CREATE INDEX ON water_system.pressure_valve USING gist (shape);

-- TABLE: pump
CREATE INDEX ON water_system.pump USING gist (shape);

-- TABLE: sample_station
CREATE INDEX ON water_system.sample_station USING gist (shape);

-- TABLE: service
CREATE INDEX ON water_system.service USING gist (shape);

CREATE INDEX ON water_system.service (shape_length);

-- TABLE: service_connection
CREATE INDEX ON water_system.service_connection USING gist (shape);

-- TABLE: service_meter
CREATE INDEX ON water_system.service_meter USING gist (shape);

-- TABLE: service_territory
CREATE INDEX ON water_system.service_territory (shape_area);

CREATE INDEX ON water_system.service_territory (shape_length);

CREATE INDEX ON water_system.service_territory USING gist (shape);

-- TABLE: service_valve
CREATE INDEX ON water_system.service_valve USING gist (shape);

-- TABLE: storage
CREATE INDEX ON water_system.storage USING gist (shape);

-- TABLE: system_meter
CREATE INDEX ON water_system.system_meter USING gist (shape);

-- TABLE: system_valve
CREATE INDEX ON water_system.system_valve USING gist (shape);

-- TABLE: well
CREATE INDEX ON water_system.well USING gist (shape);

-- TABLE: water_supply_boundary
CREATE INDEX ON water_system.water_supply_boundary (shape_area);

CREATE INDEX ON water_system.water_supply_boundary (shape_length);

CREATE INDEX ON water_system.water_supply_boundary USING gist (shape);

-- TABLE: water_storage_boundary
CREATE INDEX ON water_system.water_storage_boundary (shape_area);

CREATE INDEX ON water_system.water_storage_boundary (shape_length);

CREATE INDEX ON water_system.water_storage_boundary USING gist (shape);

-- TABLE: water_pump_station_boundary
CREATE INDEX ON water_system.water_pump_station_boundary (shape_area);

CREATE INDEX ON water_system.water_pump_station_boundary (shape_length);

CREATE INDEX ON water_system.water_pump_station_boundary USING gist (shape);

-- TABLE: treatment_plant
CREATE INDEX ON water_system.treatment_plant USING gist (shape);

-- TABLE: water_main
CREATE INDEX ON water_system.water_main USING gist (shape);

CREATE INDEX ON water_system.water_main (shape_length);

-- SEED FILE: ../../db/seeds/comments.sql
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

-- SEED FILE: ../../db/seeds/initial_data.sql
-- TYPE: adoption_status
INSERT INTO types.adoption_status (code, description)
VALUES
    (1, 'Available'),
    (2, 'Adopted');

-- TYPE: asset_manager
INSERT INTO types.asset_manager (code, description)
VALUES
    (1, 'Our Agency'),
    (2, 'Private'),
    (3, 'Other');

-- TYPE: asset_owner
INSERT INTO types.asset_owner (code, description)
VALUES
    (1, 'Our Agency'),
    (2, 'Private'),
    (3, 'Other');

-- TYPE: asset_type_structure_boundary_water_pump_station_boundary
INSERT INTO types.asset_type_structure_boundary_water_pump_station_boundary (code, description)
VALUES
    (1, 'Booster Station'),
    (2, 'Pump Station');

-- TYPE: asset_type_structure_boundary_water_storage_boundary
INSERT INTO types.asset_type_structure_boundary_water_storage_boundary (code, description)
VALUES
    (1, 'Hydropneumatic Tank'),
    (2, 'Reservoir'),
    (3, 'Retention Area'),
    (4, 'Storage Tank'),
    (5, 'Surge Tank'),
    (6, 'Tower');

-- TYPE: asset_type_structure_boundary_water_supply_boundary
INSERT INTO types.asset_type_structure_boundary_water_supply_boundary (code, description)
VALUES
    (1, 'Interconnect'),
    (2, 'Treatment Plant'),
    (3, 'Well');

-- TYPE: asset_type_structure_line_pipeline_casing
INSERT INTO types.asset_type_structure_line_pipeline_casing (code, description)
    VALUES (1, 'Casing');

-- TYPE: asset_type_water_assembly_backflow
INSERT INTO types.asset_type_water_assembly_backflow (code, description)
VALUES
    (1, 'Double Check Detector'),
    (2, 'Double Check Valve'),
    (3, 'Reduced Pressure Detector'),
    (4, 'Reduced Pressure Zone');

-- TYPE: asset_type_water_device_fire_hydrant
INSERT INTO types.asset_type_water_device_fire_hydrant (code, description)
    VALUES (1, 'Fire Hydrant');

-- TYPE: asset_type_water_device_flow_valve
INSERT INTO types.asset_type_water_device_flow_valve (code, description)
VALUES
    (1, 'Air Gape'),
    (2, 'Altitude'),
    (3, 'Check');

-- TYPE: asset_type_water_device_flushing_and_blow_off
INSERT INTO types.asset_type_water_device_flushing_and_blow_off (code, description)
VALUES
    (1, 'Automatic Flushing'),
    (2, 'Blow Off'),
    (3, 'Fire Plug Valve'),
    (4, 'Hydrant'),
    (5, 'Post Hydrant');

-- TYPE: asset_type_water_device_pressure_valve
INSERT INTO types.asset_type_water_device_pressure_valve (code, description)
VALUES
    (1, 'Air and Vacuum'),
    (2, 'Air Release'),
    (3, 'Combination Air'),
    (4, 'Pressure Limiting'),
    (5, 'Pressure Reducing'),
    (6, 'Pressure Release'),
    (7, 'Pressure Sustaining'),
    (8, 'Surge');

-- TYPE: asset_type_water_device_pump
INSERT INTO types.asset_type_water_device_pump (code, description)
VALUES
    (1, 'Bosster'),
    (2, 'Chemical'),
    (3, 'Primary');

-- TYPE: asset_type_water_device_service_connection
INSERT INTO types.asset_type_water_device_service_connection (code, description)
VALUES
    (1, 'Commercial'),
    (2, 'Fire'),
    (3, 'Industrial'),
    (4, 'Irrigation'),
    (5, 'Residential');

-- TYPE: asset_type_water_device_service_meter
INSERT INTO types.asset_type_water_device_service_meter (code, description)
VALUES
    (1, 'Commercial'),
    (2, 'Fire'),
    (3, 'Industrial'),
    (4, 'Irrigation'),
    (5, 'Residential');

-- TYPE: asset_type_water_device_service_valve
INSERT INTO types.asset_type_water_device_service_valve (code, description)
VALUES
    (1, 'Blow Off'),
    (2, 'Flap'),
    (3, 'Hydrant'),
    (4, 'Purge'),
    (5, 'Sampling'),
    (6, 'Service');

-- TYPE: asset_type_water_device_storage
INSERT INTO types.asset_type_water_device_storage (code, description)
VALUES
    (1, 'Hydropneumatic Tank'),
    (2, 'Reservoir'),
    (3, 'Standpipe'),
    (4, 'Storage Tank'),
    (5, 'Surge Tank'),
    (6, 'Tower');

-- TYPE: asset_type_water_device_supply_welltype
INSERT INTO types.asset_type_water_device_supply_welltype (code, description)
VALUES
    (1, 'Water'),
    (2, 'Monitoring'),
    (3, 'Injection');

-- TYPE: asset_type_water_device_system_meter
INSERT INTO types.asset_type_water_device_system_meter (code, description)
VALUES
    (1, 'Bulk'),
    (2, 'DMA'),
    (3, 'Emergency Connection'),
    (4, 'Pump Station');

-- TYPE: asset_type_water_device_system_valve
INSERT INTO types.asset_type_water_device_system_valve (code, description)
VALUES
    (1, 'Bypass'),
    (2, 'Interconnect'),
    (3, 'Isolation Station'),
    (4, 'Pressure Zone'),
    (5, 'Supply'),
    (6, 'System');

-- TYPE: asset_type_water_junction_fitting
INSERT INTO types.asset_type_water_junction_fitting (code, description)
VALUES
    (1, 'Clamp'),
    (2, 'Corporation Stop'),
    (3, 'Coupling'),
    (4, 'Cross'),
    (5, 'Elbow'),
    (6, 'End Cup'),
    (7, 'Expansion Joint'),
    (8, 'Flange'),
    (9, 'Plug'),
    (10, 'Reducer'),
    (11, 'Reducing Cross'),
    (12, 'Reducing Tee'),
    (13, 'Saddle'),
    (14, 'Screw'),
    (15, 'Sleeve'),
    (16, 'Tap'),
    (17, 'Tapping Saddle'),
    (18, 'Taping Sleeve'),
    (19, 'Tee'),
    (20, 'Transition'),
    (21, 'Weld'),
    (22, 'Wye');

-- TYPE: asset_type_water_line_service
INSERT INTO types.asset_type_water_line_service (code, description)
VALUES
    (1, 'Air and Vacuum Service'),
    (2, 'Blow Off Service'),
    (3, 'Commercial Service'),
    (4, 'Fire Service'),
    (5, 'Hydrant Service'),
    (6, 'Industrical Service'),
    (7, 'Irrigation Service'),
    (8, 'Residential Service'),
    (9, 'Sampling Service');

-- TYPE: asset_type_water_line_water_main
INSERT INTO types.asset_type_water_line_water_main (code, description)
VALUES
    (1, 'Distribution Main'),
    (2, 'Drain'),
    (3, 'Overflow'),
    (4, 'Production'),
    (5, 'Transmission Main');

-- TYPE: fire_hydrant_assignment_type
INSERT INTO types.fire_hydrant_assignment_type (code, description)
VALUES
    (1, 'Flow Test'),
    (2, 'Flush');

-- TYPE: lifecycle
INSERT INTO types.lifecycle (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Proposed'),
    (2, 'Approved'),
    (3, 'Under Construction'),
    (4, 'In Service'),
    (5, 'To Be Retired'),
    (6, 'Abandoned'),
    (7, 'Retired'),
    (8, 'Removed'),
    (9, 'Out of Service');

-- TYPE: manufactured_types
INSERT INTO types.manufactured_types (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Ames Company Inc'),
    (2, 'BAVCO'),
    (3, 'Cla-Val'),
    (4, 'Conbraco Industries Inc'),
    (5, 'Febco Backflow Prevention'),
    (6, 'Danfoss Flomatic Valve'),
    (7, 'Mid-West Instrument'),
    (8, 'Watts Regulator'),
    (9, 'Hunter Industries'),
    (10, 'Wilkins/Zurn Industries'),
    (11, 'Other');

-- TYPE: pipeline_casing_diameter
INSERT INTO types.pipeline_casing_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (4, '4'),
    (6, '6'),
    (8, '8'),
    (10, '10'),
    (12, '12'),
    (14, '14'),
    (16, '16'),
    (18, '18'),
    (20, '20'),
    (22, '22'),
    (24, '24'),
    (26, '26'),
    (28, '28'),
    (30, '30'),
    (32, '32'),
    (34, '34'),
    (36, '36'),
    (40, '40'),
    (42, '42'),
    (44, '44'),
    (46, '46'),
    (48, '48');

-- TYPE: pipeline_casing_fill_type
INSERT INTO types.pipeline_casing_fill_type (code, description)
VALUES
    (1, 'Grout'),
    (2, 'Pea Gravel'),
    (3, 'Sand');

-- TYPE: pipeline_valve_close_direction
INSERT INTO types.pipeline_valve_close_direction (code, description)
VALUES
    (1, 'Counter Clockwise'),
    (2, 'Clockwise');

-- TYPE: pipeline_valve_status
INSERT INTO types.pipeline_valve_status (code, description)
VALUES
    (0, 'Closed'),
    (1, 'Open');

-- TYPE: spatial_confidence
INSERT INTO types.spatial_confidence (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'High'),
    (2, 'Medium'),
    (3, 'Low');

-- TYPE: spatial_source
INSERT INTO types.spatial_source (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'As-Built'),
    (2, 'CAD'),
    (3, 'Digitilized'),
    (4, 'GPS/GNSS'),
    (5, 'Field Sketch');

-- TYPE: water_diameter
INSERT INTO types.water_diameter (code, description)
VALUES
    (15, '1/2"'),
    (20, '3/4"'),
    (25, '1"'),
    (32, '1 1/4"'),
    (40, '1 1/2"'),
    (50, '2"'),
    (60, '2 1/2"'),
    (75, '3"'),
    (100, '4"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (375, '15"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"'),
    (750, '30"'),
    (900, '36"'),
    (1000, '40"'),
    (1050, '42"'),
    (1200, '48"'),
    (1350, '54"'),
    (1500, '60"'),
    (1600, '66"'),
    (1800, '72"'),
    (1900, '75"');

-- TYPE: water_fire_hydrant_manufacturer
INSERT INTO types.water_fire_hydrant_manufacturer (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'American Darling'),
    (2, 'Clow Corporation'),
    (3, 'Corey'),
    (4, 'Dresser'),
    (5, 'Eddy'),
    (6, 'Iowa Valve'),
    (7, 'Kennedy Valve'),
    (8, 'M&H Valve'),
    (9, 'Mueller CompanyA'),
    (10, 'Traverse City'),
    (11, 'US Pipe'),
    (12, 'Waterous'),
    (13, 'Wood-Mathews'),
    (14, 'Other');

-- TYPE: water_interconnect_connection_type
INSERT INTO types.water_interconnect_connection_type (code, description)
VALUES
    (1, 'Buy'),
    (2, 'Sell'),
    (3, 'Buy or Sell');

-- TYPE: water_main_material
INSERT INTO types.water_main_material (code, description)
VALUES
    (1, 'Asbestos Cement - AC'),
    (2, 'Brick - BR'),
    (3, 'Cast Iron - CAS'),
    (4, 'Copper - COP'),
    (5, 'Concrete (Non-Reinforced) - CP'),
    (6, 'Concrete Segments (Bolted) - CSB'),
    (7, 'Concrete Segments (Unbolted) - CSU'),
    (8, 'Ductile Iron - DIP'),
    (9, 'Galvanized Pipe - GP'),
    (10, 'Pitch Fiber (Orangeburg) - OB'),
    (11, 'Plastic/Steel Composite - PSC'),
    (12, 'Polyethylene - PE'),
    (13, 'Polypropylene - PP'),
    (14, 'Polyvinyl Chloride - PVC'),
    (15, 'Steel - SP'),
    (16, 'Transite - TTE'),
    (17, 'Wood - WD'),
    (18, 'Pre-stressed Concrete Cylinder Pipe - PCCP'),
    (19, 'Pre-stressed Concrete Embedded Cylinder Pipe AWWA C-301 - PCPE'),
    (20, 'Pre-stressed Concrete Lined Cylinder Pipe AWWA C-301 - PCPL'),
    (21, 'Steel Cylinder Reinforced Concrete Pipe - SRC'),
    (22, 'High Density Polyethylene - HDPE'),
    (23, 'Unreinforced Concrete Pipe - URC'),
    (24, 'Fiberglass Reinforced Pipe - FRP'),
    (25, 'Reinforced Concrete Pipe - RCP'),
    (26, 'Corrugated Pipe - CORR'),
    (27, 'Plastic - PLA'),
    (28, 'Non-Plastic - NPLA');

-- TYPE: water_pump_type
INSERT INTO types.water_pump_type (code, description)
VALUES
    (1, 'Axial Flow'),
    (2, 'Centrifugal'),
    (3, 'Jet'),
    (4, 'Reciprocating'),
    (5, 'Rotary'),
    (6, 'Turbine');

-- TYPE: water_service_material
INSERT INTO types.water_service_material (code, description)
VALUES
    (1, 'Cast Iron - CAS'),
    (2, 'Copper - COP'),
    (3, 'Ductile Iron - DIP'),
    (4, 'Polyvinyl Chloride - PVC'),
    (5, 'Lead - LP');

-- TYPE: water_supply_filtration_type
INSERT INTO types.water_supply_filtration_type (code, description)
VALUES
    (1, 'Carbon'),
    (2, 'Reverse Osmosis'),
    (3, 'Ultraviolet Light'),
    (4, 'Sediment'),
    (5, 'Biological');

-- TYPE: water_treatment_plant_type
INSERT INTO types.water_treatment_plant_type (code, description)
VALUES
    (1, 'Goundwater'),
    (2, 'Surface Water'),
    (3, 'Desalination');

-- TYPE: water_type
INSERT INTO types.water_type (code, description)
VALUES
    (1, 'Potable'),
    (2, 'Irrigation'),
    (3, 'Fire'),
    (4, 'Raw'),
    (5, 'Intermediate'),
    (6, 'Finished');

-- TYPE: water_valve_type
INSERT INTO types.water_valve_type (code, description)
VALUES
    (1, 'Ball'),
    (2, 'Butterfly'),
    (3, 'Cone'),
    (4, 'Gate'),
    (5, 'Plug');

