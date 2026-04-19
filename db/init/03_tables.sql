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
    created_user varchar(64),
    created_date timestamp,
    last_edited_user varchar(64),
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

