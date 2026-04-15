-- TABLE: asset
CREATE SEQUENCE IF NOT EXISTS water_system.asset_global_id_seq AS bigint;

CREATE TABLE IF NOT EXISTS water_system.asset (
    -- Globally unique identifier
    global_id bigint NOT NULL DEFAULT NEXTVAL('asset_global_id_seq'),
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
    --
    FOREIGN KEY (lifecycle_status) REFERENCES codelist.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES codelist.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES codelist.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES codelist.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES codelist.spatial_confidence (code),
    --
    PRIMARY KEY (global_id)
);

ALTER SEQUENCE water_system.asset_global_id_seq OWNED BY water_system.asset.global_id;

-- TABLE: linear_asset
CREATE TABLE IF NOT EXISTS water_system.linear_asset (
    shape GEOMETRY(LINESTRINGZ, 4326),
    shape_length numeric GENERATED ALWAYS AS ((ST_LENGTH (shape))::numeric(8, 2)) STORED
)
INHERITS (
    water_system.asset
);

-- TABLE: polygonal_asset
CREATE TABLE IF NOT EXISTS water_system.polygonal_asset (
    shape GEOMETRY(POLYGONZ, 4326),
    shape_area numeric GENERATED ALWAYS AS ((ST_AREA (shape))::numeric(8, 2)) STORED,
    shape_length numeric GENERATED ALWAYS AS ((ST_PERIMETER (shape))::numeric(8, 2)) STORED
)
INHERITS (
    water_system.asset
);

-- TABLE: punctual_asset
CREATE TABLE IF NOT EXISTS water_system.punctual_asset (
    shape GEOMETRY(POINTZ, 4326),
    symbol_rotation smallint CHECK (symbol_rotation BETWEEN 0 AND 360) DEFAULT 0
)
INHERITS (
    water_system.asset
);

-- TABLE: backflow
CREATE TABLE IF NOT EXISTS water_system.backflow (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Backflow',
    manufacturer smallint,
    design_model bigint,
    is_locked boolean,
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_assembly_backflow (code),
    FOREIGN KEY (manufacturer) REFERENCES codelist.manufactured_types (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: fire_hydrant
CREATE TABLE IF NOT EXISTS water_system.fire_hydrant (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Fire Hydrant',
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
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_fire_hydrant (code),
    FOREIGN KEY (manufacturer) REFERENCES codelist.water_fire_hydrant_manufacturer (code),
    FOREIGN KEY (diameter) REFERENCES codelist.water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES codelist.water_diameter (code),
    FOREIGN KEY (assignment_type) REFERENCES codelist.fire_hydrant_assignment_type (code),
    FOREIGN KEY (adoption_status) REFERENCES codelist.adoption_status (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: fitting
CREATE TABLE IF NOT EXISTS water_system.fitting (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Fitting',
    diameter smallint CHECK (diameter BETWEEN 15 AND 1200),
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 15 AND 1200),
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_junction_fitting (code),
    FOREIGN KEY (diameter) REFERENCES codelist.water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES codelist.water_diameter (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: flow_valve
CREATE TABLE IF NOT EXISTS water_system.flow_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Flow Valve',
    manufacturer smallint,
    design_model bigint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_flow_valve (code),
    FOREIGN KEY (manufacturer) REFERENCES codelist.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES codelist.water_diameter (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: flushing_and_blow_off
CREATE TABLE IF NOT EXISTS water_system.flushing_and_blow_off (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Flushing and Blow Off',
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_flushing_and_blow_off (code),
    FOREIGN KEY (manufacturer) REFERENCES codelist.manufactured_types (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: interconnect
CREATE TABLE IF NOT EXISTS water_system.interconnect (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Interconnect',
    last_maint date,
    permitted_flow numeric,
    avaible_flow numeric,
    emergency boolean,
    FOREIGN KEY (asset_type) REFERENCES codelist.water_interconnect_connection_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: pipe_casing
CREATE TABLE IF NOT EXISTS water_system.pipe_casing (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pipe Casing',
    fill_type smallint,
    diameter smallint,
    measured_length numeric(8, 2) CHECK (measured_length > 0),
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_structure_line_pipeline_casing (code),
    FOREIGN KEY (diameter) REFERENCES codelist.pipeline_casing_diameter (code),
    FOREIGN KEY (fill_type) REFERENCES codelist.pipeline_casing_fill_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.linear_asset
);

-- TABLE: pressure_valve
CREATE TABLE IF NOT EXISTS water_system.pressure_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pressure Valve',
    manufacturer smallint,
    design_model bigint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 1900),
    pressure numeric,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_pressure_valve (code),
    FOREIGN KEY (manufacturer) REFERENCES codelist.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES codelist.water_diameter (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: pump
CREATE TABLE IF NOT EXISTS water_system.pump (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pump',
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 100 AND 1200),
    secondary_diameter smallint CHECK (secondary_diameter BETWEEN 100 AND 1200),
    pressure numeric,
    design_type smallint,
    design_info numeric,
    operable boolean,
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_pump (code),
    FOREIGN KEY (manufacturer) REFERENCES codelist.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES codelist.water_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES codelist.water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES codelist.water_pump_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: sample_station
CREATE TABLE IF NOT EXISTS water_system.sample_station (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Sample Station',
    last_maint date,
    station_location varchar(255),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: service
CREATE TABLE IF NOT EXISTS water_system.service (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service',
    design_type smallint,
    material smallint,
    diameter smallint CHECK (diameter BETWEEN 15 AND 250),
    measured_length numeric(8, 2) CHECK (measured_length > 0),
    tracer_wire boolean,
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_line_service (code),
    FOREIGN KEY (diameter) REFERENCES codelist.water_diameter (code),
    FOREIGN KEY (material) REFERENCES codelist.water_service_material (code),
    FOREIGN KEY (design_type) REFERENCES codelist.water_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.linear_asset
);

-- TABLE: service_connection
CREATE TABLE IF NOT EXISTS water_system.service_connection (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service Connection',
    last_maint date,
    account_id varchar(50),
    critical boolean DEFAULT FALSE,
    metered boolean DEFAULT FALSE,
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_service_connection (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: service_meter
CREATE TABLE IF NOT EXISTS water_system.service_meter (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service Meter',
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 20 AND 600),
    account_id varchar(50),
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_service_meter (code),
    FOREIGN KEY (manufacturer) REFERENCES codelist.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES codelist.water_diameter (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: service_territory
CREATE TABLE IF NOT EXISTS water_system.service_territory (
    object_id serial,
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.polygonal_asset
);

-- TABLE: service_valve
CREATE TABLE IF NOT EXISTS water_system.service_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service Valve',
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
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_service_valve (code),
    FOREIGN KEY (manufacturer) REFERENCES codelist.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES codelist.water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES codelist.water_valve_type (code),
    FOREIGN KEY (valve_status) REFERENCES codelist.pipeline_valve_status (code),
    FOREIGN KEY (clockwise_to_close) REFERENCES codelist.pipeline_valve_close_direction (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: storage
CREATE TABLE IF NOT EXISTS water_system.storage (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Storage',
    last_maint date,
    height numeric,
    width numeric,
    volume numeric,
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_storage (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: system_meter
CREATE TABLE IF NOT EXISTS water_system.system_meter (
    object_id serial,
    asset_id varchar(64) DEFAULT 'System Meter',
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    diameter smallint CHECK (diameter BETWEEN 20 AND 600),
    account_id varchar(50),
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_system_meter (code),
    FOREIGN KEY (manufacturer) REFERENCES codelist.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES codelist.water_diameter (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: system_valve
CREATE TABLE IF NOT EXISTS water_system.system_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'System Valve',
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
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_system_valve (code),
    FOREIGN KEY (manufacturer) REFERENCES codelist.manufactured_types (code),
    FOREIGN KEY (diameter) REFERENCES codelist.water_diameter (code),
    FOREIGN KEY (design_type) REFERENCES codelist.water_valve_type (code),
    FOREIGN KEY (valve_status) REFERENCES codelist.pipeline_valve_status (code),
    FOREIGN KEY (clockwise_to_close) REFERENCES codelist.pipeline_valve_close_direction (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: well
CREATE TABLE IF NOT EXISTS water_system.well (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Well',
    last_maint date,
    filtration_type smallint,
    bore_depth numeric,
    aquiler_depth numeric,
    permitted_flow numeric,
    available_flow numeric,
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_device_supply_welltype (code),
    FOREIGN KEY (filtration_type) REFERENCES codelist.water_supply_filtration_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: water_supply_boundary
CREATE TABLE IF NOT EXISTS water_system.water_supply_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Supply Boundary',
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_structure_boundary_water_supply_boundary (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.polygonal_asset
);

-- TABLE: water_storage_boundary
CREATE TABLE IF NOT EXISTS water_system.water_storage_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Storage Boundary',
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_structure_boundary_water_storage_boundary (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.polygonal_asset
);

-- TABLE: water_pump_station_boundary
CREATE TABLE IF NOT EXISTS water_system.water_pump_station_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Pump Station Boundary',
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_structure_boundary_water_pump_station_boundary (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.polygonal_asset
);

-- TABLE: treatment_plant
CREATE TABLE IF NOT EXISTS water_system.treatment_plant (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Treatment Plant',
    last_maint date,
    permitted_capacity numeric,
    rated_capacity numeric,
    average_daily_flow numeric,
    filtration_type smallint,
    FOREIGN KEY (asset_type) REFERENCES codelist.water_treatment_plant_type (code),
    FOREIGN KEY (filtration_type) REFERENCES codelist.water_supply_filtration_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.punctual_asset
);

-- TABLE: water_main
CREATE TABLE IF NOT EXISTS water_system.water_main (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Main',
    design_type smallint,
    material smallint,
    diameter smallint CHECK (diameter BETWEEN 100 AND 1900),
    measured_length numeric(8, 2),
    tracer_wire boolean,
    FOREIGN KEY (asset_type) REFERENCES codelist.asset_type_water_line_water_main (code),
    FOREIGN KEY (diameter) REFERENCES codelist.water_diameter (code),
    FOREIGN KEY (material) REFERENCES codelist.water_main_material (code),
    FOREIGN KEY (design_type) REFERENCES codelist.water_type (code),
    PRIMARY KEY (object_id)
)
INHERITS (
    water_system.linear_asset
);

