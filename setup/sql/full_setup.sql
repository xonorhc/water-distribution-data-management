-- Auto-generated SQL setup file
-- Generated at Wed May  6 04:50:16 PM -04 2026

BEGIN;

-- FILE: ../../db/00_extensions/00_extensions.sql
CREATE EXTENSION IF NOT EXISTS postgis;



-- FILE: ../../db/01_schemas/01_schemas.sql
CREATE SCHEMA IF NOT EXISTS domains;
CREATE SCHEMA IF NOT EXISTS watersystem;



-- FILE: ../../db/02_domains/asset_manager.sql
-- TABLE: asset_manager
CREATE TABLE IF NOT EXISTS domains.asset_manager (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);


-- FILE: ../../db/02_domains/asset_owner.sql
-- TABLE: asset_owner
CREATE TABLE IF NOT EXISTS domains.asset_owner (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);


-- FILE: ../../db/02_domains/asset_type_structure_boundary_water_pump_station_boundary.sql
-- TABLE: asset_type_structure_boundary_water_pump_station_boundary
CREATE TABLE IF NOT EXISTS domains.asset_type_structure_boundary_water_pump_station_boundary (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_structure_boundary_water_storage_boundary.sql
-- TABLE: asset_type_structure_boundary_water_storage_boundary
CREATE TABLE IF NOT EXISTS domains.asset_type_structure_boundary_water_storage_boundary (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);


-- FILE: ../../db/02_domains/asset_type_structure_boundary_water_supply_boundary.sql
-- TABLE: asset_type_structure_boundary_water_supply_boundary
CREATE TABLE IF NOT EXISTS domains.asset_type_structure_boundary_water_supply_boundary (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);


-- FILE: ../../db/02_domains/asset_type_structure_line_pipeline_casing.sql
-- TABLE: asset_type_structure_line_pipeline_casing
CREATE TABLE IF NOT EXISTS domains.asset_type_structure_line_pipeline_casing (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);


-- FILE: ../../db/02_domains/asset_type_water_assembly_backflow.sql
-- TABLE: asset_type_water_assembly_backflow
CREATE TABLE IF NOT EXISTS domains.asset_type_water_assembly_backflow (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);


-- FILE: ../../db/02_domains/asset_type_water_device_fire_hydrant.sql
-- TABLE: asset_type_water_device_fire_hydrant
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_fire_hydrant (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_device_flow_valve.sql
-- TABLE: asset_type_water_device_flow_valve
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_flow_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_device_flushing_and_blow_off.sql
-- TABLE: asset_type_water_device_flushing_and_blow_off
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_flushing_and_blow_off (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);


-- FILE: ../../db/02_domains/asset_type_water_device_pressure_valve.sql
-- TABLE: asset_type_water_device_pressure_valve
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_pressure_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_device_pump.sql
-- TABLE: asset_type_water_device_pump
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_pump (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_device_service_connection.sql
-- TABLE: asset_type_water_device_service_connection
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_service_connection (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_device_service_meter.sql
-- TABLE: asset_type_water_device_service_meter
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_service_meter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_device_service_valve.sql
-- TABLE: asset_type_water_device_service_valve
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_service_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_device_storage.sql
-- TABLE: asset_type_water_device_storage
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_storage (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_device_supply_welltype.sql
-- TABLE: asset_type_water_device_supply_welltype
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_supply_welltype (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_device_system_meter.sql
-- TABLE: asset_type_water_device_system_meter
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_system_meter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_device_system_valve.sql
-- TABLE: asset_type_water_device_system_valve
CREATE TABLE IF NOT EXISTS domains.asset_type_water_device_system_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_junction_fitting.sql
-- TABLE: asset_type_water_junction_fitting
CREATE TABLE IF NOT EXISTS domains.asset_type_water_junction_fitting (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_line_service.sql
-- TABLE: asset_type_water_line_service
CREATE TABLE IF NOT EXISTS domains.asset_type_water_line_service (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/asset_type_water_line_water_main.sql
-- TABLE: asset_type_water_line_water_main
CREATE TABLE IF NOT EXISTS domains.asset_type_water_line_water_main (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/lifecycle.sql
-- TABLE: lifecycle
CREATE TABLE IF NOT EXISTS domains.lifecycle (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/manufactured_types.sql
-- TABLE: manufactured_types
CREATE TABLE IF NOT EXISTS domains.manufactured_types (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/pipeline_casing_diameter.sql
-- TABLE: pipeline_casing_diameter
CREATE TABLE IF NOT EXISTS domains.pipeline_casing_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/pipeline_casing_fill_type.sql
-- TABLE: pipeline_casing_fill_type
CREATE TABLE IF NOT EXISTS domains.pipeline_casing_fill_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/pipeline_valve_close_direction.sql
-- TABLE: pipeline_valve_close_direction
CREATE TABLE IF NOT EXISTS domains.pipeline_valve_close_direction (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/pipeline_valve_status.sql
-- TABLE: pipeline_valve_status
CREATE TABLE IF NOT EXISTS domains.pipeline_valve_status (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/spatial_confidence.sql
-- TABLE: spatial_confidence
CREATE TABLE IF NOT EXISTS domains.spatial_confidence (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/spatial_source.sql
-- TABLE: spatial_source
CREATE TABLE IF NOT EXISTS domains.spatial_source (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/water_diameter.sql
-- TABLE: water_diameter
CREATE TABLE IF NOT EXISTS domains.water_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/water_fire_hydrant_manufacturer.sql
-- TABLE: water_fire_hydrant_manufacturer
CREATE TABLE IF NOT EXISTS domains.water_fire_hydrant_manufacturer (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/water_hydrant_nozzle_diameter.sql
-- TABLE: water_hydrant_nozzle_diameter
CREATE TABLE IF NOT EXISTS domains.water_hydrant_nozzle_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/water_hydrant_service_diameter.sql
-- TABLE: water_hydrant_service_diameter
CREATE TABLE IF NOT EXISTS domains.water_hydrant_service_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);




-- FILE: ../../db/02_domains/water_interconnect_connection_type.sql
-- TABLE: water_interconnect_connection_type
CREATE TABLE IF NOT EXISTS domains.water_interconnect_connection_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/water_main_diameter.sql
-- TABLE: water_main_diameter
CREATE TABLE IF NOT EXISTS domains.water_main_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);




-- FILE: ../../db/02_domains/water_main_material.sql
-- TABLE: water_main_material
CREATE TABLE IF NOT EXISTS domains.water_main_material (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/water_meter_diameter.sql
-- TABLE: water_meter_diameter
CREATE TABLE IF NOT EXISTS domains.water_meter_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);




-- FILE: ../../db/02_domains/water_pump_diameter.sql
-- TABLE: water_pump_diameter
CREATE TABLE IF NOT EXISTS domains.water_pump_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);




-- FILE: ../../db/02_domains/water_pump_type.sql
-- TABLE: water_pump_type
CREATE TABLE IF NOT EXISTS domains.water_pump_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/water_sample_type.sql
-- TABLE: water_sample_type
CREATE TABLE IF NOT EXISTS domains.water_sample_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);




-- FILE: ../../db/02_domains/water_service_diameter.sql
-- TABLE: water_service_diameter
CREATE TABLE IF NOT EXISTS domains.water_service_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);




-- FILE: ../../db/02_domains/water_service_material.sql
-- TABLE: water_service_material
CREATE TABLE IF NOT EXISTS domains.water_service_material (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/water_supply_filtration_type.sql
-- TABLE: water_supply_filtration_type
CREATE TABLE IF NOT EXISTS domains.water_supply_filtration_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/water_treatment_plant_type.sql
-- TABLE: water_treatment_plant_type
CREATE TABLE IF NOT EXISTS domains.water_treatment_plant_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/water_type.sql
-- TABLE: water_type
CREATE TABLE IF NOT EXISTS domains.water_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/02_domains/water_valve_type.sql
-- TABLE: water_valve_type
CREATE TABLE IF NOT EXISTS domains.water_valve_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);



-- FILE: ../../db/03_datasets/00_asset.sql
-- TABLE: asset
CREATE SEQUENCE IF NOT EXISTS watersystem.asset_global_id_seq AS bigint;

CREATE TABLE IF NOT EXISTS watersystem.asset (
    global_id bigint DEFAULT nextval('watersystem.asset_global_id_seq'),
    object_id integer,
    asset_id varchar(64),
    asset_type smallint NOT NULL DEFAULT 0,
    nickname varchar(64),
    lifecycle_status smallint NOT NULL DEFAULT 4,
    install_date date,
    inservice_date date,
    retired_date date,
    owned_by smallint DEFAULT 1,
    main_by smallint DEFAULT 1,
    notes varchar(2000),
    spatial_source smallint DEFAULT 0,
    spatial_confidence smallint DEFAULT 0,
    latitude numeric(9, 7),
    longitude numeric(9, 7),
    altitude numeric(6, 3),
    created_user varchar(64),
    created_date timestamptz,
    last_edited_user varchar(64),
    last_edited_date timestamptz,
    PRIMARY KEY (global_id),
    FOREIGN KEY (lifecycle_status) REFERENCES domains.lifecycle (code),
    FOREIGN KEY (owned_by) REFERENCES domains.asset_owner (code),
    FOREIGN KEY (main_by) REFERENCES domains.asset_manager (code),
    FOREIGN KEY (spatial_source) REFERENCES domains.spatial_source (code),
    FOREIGN KEY (spatial_confidence) REFERENCES domains.spatial_confidence (code)
);

ALTER SEQUENCE watersystem.asset_global_id_seq OWNED BY watersystem.asset.global_id;



-- FILE: ../../db/03_datasets/01_punctual_asset.sql
-- TABLE: punctual_asset
CREATE TABLE IF NOT EXISTS watersystem.punctual_asset (
    shape geometry(POINTZ, 4326),
    symbol_rotation smallint DEFAULT 0,
    CHECK (symbol_rotation BETWEEN 0 AND 359)
)
INHERITS (
    watersystem.asset
);

CREATE INDEX ON watersystem.punctual_asset USING gist (shape);



-- FILE: ../../db/03_datasets/02_linear_asset.sql
-- TABLE: linear_asset
CREATE TABLE IF NOT EXISTS watersystem.linear_asset (
    shape geometry(LINESTRINGZ, 4326),
    shape_length numeric GENERATED ALWAYS AS ((ST_LENGTH (shape))::numeric(8, 2)) STORED
)
INHERITS (
    watersystem.asset
);

CREATE INDEX ON watersystem.linear_asset USING gist (shape);



-- FILE: ../../db/03_datasets/03_polygonal_asset.sql
-- TABLE: polygonal_asset
CREATE TABLE IF NOT EXISTS watersystem.polygonal_asset (
    shape geometry(POLYGONZ, 4326),
    shape_area numeric GENERATED ALWAYS AS ((ST_AREA (shape))::numeric(8, 2)) STORED,
    shape_length numeric GENERATED ALWAYS AS ((ST_PERIMETER (shape))::numeric(8, 2)) STORED
)
INHERITS (
    watersystem.asset
);

CREATE INDEX ON watersystem.polygonal_asset USING gist (shape);


-- FILE: ../../db/03_datasets/backflow.sql
-- TABLE: backflow
CREATE TABLE IF NOT EXISTS watersystem.backflow (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Backflow',
    is_locked boolean DEFAULT FALSE,
    manufacturer smallint,
    design_model bigint,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_assembly_backflow (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.backflow USING gist (shape);



-- FILE: ../../db/03_datasets/fire_hydrant.sql
-- TABLE: fire_hydrant
CREATE TABLE IF NOT EXISTS watersystem.fire_hydrant (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Fire Hydrant',
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

-- PostGIS index
CREATE INDEX ON watersystem.fire_hydrant USING gist (shape);



-- FILE: ../../db/03_datasets/fitting.sql
-- TABLE: fitting
CREATE TABLE IF NOT EXISTS watersystem.fitting (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Fitting',
    diameter smallint DEFAULT 0,
    secondary_diameter smallint DEFAULT 0,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_junction_fitting (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_main_diameter (code),
    FOREIGN KEY (secondary_diameter) REFERENCES domains.water_main_diameter (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.fitting USING gist (shape);



-- FILE: ../../db/03_datasets/flow_valve.sql
-- TABLE: flow_valve
CREATE TABLE IF NOT EXISTS watersystem.flow_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Flow Valve',
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

-- PostGIS index
CREATE INDEX ON watersystem.flow_valve USING gist (shape);



-- FILE: ../../db/03_datasets/flushing_and_blow_off.sql
-- TABLE: flushing_and_blow_off
CREATE TABLE IF NOT EXISTS watersystem.flushing_and_blow_off (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Flushing and Blow Off',
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_flushing_and_blow_off (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.flushing_and_blow_off USING gist (shape);



-- FILE: ../../db/03_datasets/interconnect.sql
-- TABLE: interconnect
CREATE TABLE IF NOT EXISTS watersystem.interconnect (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Interconnect',
    permitted_flow numeric,
    avaible_flow numeric,
    emergency boolean DEFAULT FALSE,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.water_interconnect_connection_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.interconnect USING gist (shape);



-- FILE: ../../db/03_datasets/pipe_casing.sql
-- TABLE: pipe_casing
CREATE TABLE IF NOT EXISTS watersystem.pipe_casing (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pipe Casing',
    diameter smallint DEFAULT 0,
    fill_type smallint DEFAULT 0,
    measured_length numeric(8, 2),
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_structure_line_pipeline_casing (code),
    FOREIGN KEY (diameter) REFERENCES domains.pipeline_casing_diameter (code),
    FOREIGN KEY (fill_type) REFERENCES domains.pipeline_casing_fill_type (code),
    CHECK (measured_length > 0)
)
INHERITS (
    watersystem.linear_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.pipe_casing USING gist (shape);
CREATE INDEX ON watersystem.pipe_casing (shape_length);



-- FILE: ../../db/03_datasets/pressure_valve.sql
-- TABLE: pressure_valve
CREATE TABLE IF NOT EXISTS watersystem.pressure_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pressure Valve',
    diameter smallint DEFAULT 0,
    pressure numeric,
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_pressure_valve (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code),
    CHECK (pressure > 0)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.pressure_valve USING gist (shape);



-- FILE: ../../db/03_datasets/pump.sql
-- TABLE: pump
CREATE TABLE IF NOT EXISTS watersystem.pump (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Pump',
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

-- PostGIS index
CREATE INDEX ON watersystem.pump USING gist (shape);



-- FILE: ../../db/03_datasets/sample_station.sql
-- TABLE: sample_station
CREATE TABLE IF NOT EXISTS watersystem.sample_station (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Sample Station',
    sample_station_location varchar(255),
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.water_sample_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.sample_station USING gist (shape);



-- FILE: ../../db/03_datasets/service_connection.sql
-- TABLE: service_connection
CREATE TABLE IF NOT EXISTS watersystem.service_connection (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service Connection',
    account_id varchar(50),
    critical boolean DEFAULT FALSE,
    metered boolean DEFAULT FALSE,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_service_connection (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.service_connection USING gist (shape);



-- FILE: ../../db/03_datasets/service_meter.sql
-- TABLE: service_meter
CREATE TABLE IF NOT EXISTS watersystem.service_meter (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service Meter',
    account_id varchar(64),
    diameter smallint DEFAULT 0,
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_service_meter (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_meter_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.service_meter USING gist (shape);



-- FILE: ../../db/03_datasets/service.sql
-- TABLE: service
CREATE TABLE IF NOT EXISTS watersystem.service (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service',
    diameter smallint DEFAULT 0,
    material smallint DEFAULT 0,
    water_type smallint DEFAULT 1,
    measured_length numeric(8, 2),
    tracer_wire boolean DEFAULT FALSE,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_line_service (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_service_diameter (code),
    FOREIGN KEY (material) REFERENCES domains.water_service_material (code),
    FOREIGN KEY (water_type) REFERENCES domains.water_type (code),
    CHECK (measured_length > 0)
)
INHERITS (
    watersystem.linear_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.service USING gist (shape);
CREATE INDEX ON watersystem.service (shape_length);



-- FILE: ../../db/03_datasets/service_territory.sql
-- TABLE: service_territory
CREATE TABLE IF NOT EXISTS watersystem.service_territory (
    object_id serial PRIMARY KEY,
    nickname varchar(64),
    created_user varchar(64),
    created_date timestamptz,
    last_edited_user varchar(64),
    last_edited_date timestamptz,
    shape geometry(POLYGONZ, 4326),
    shape_area numeric GENERATED ALWAYS AS ((ST_AREA (shape))::numeric(8, 2)) STORED,
    shape_length numeric GENERATED ALWAYS AS ((ST_PERIMETER (shape))::numeric(8, 2)) STORED
);

-- PostGIS index
CREATE INDEX ON watersystem.service_territory (shape_area);
CREATE INDEX ON watersystem.service_territory (shape_length);
CREATE INDEX ON watersystem.service_territory USING gist (shape);



-- FILE: ../../db/03_datasets/service_valve.sql
-- TABLE: service_valve
CREATE TABLE IF NOT EXISTS watersystem.service_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Service Valve',
    diameter smallint DEFAULT 0,
    manufacturer smallint,
    design_model bigint,
    valve_type smallint DEFAULT 0,
    valve_status smallint DEFAULT 1,
    clockwise_to_close smallint,
    turns_to_close numeric,
    operable boolean DEFAULT TRUE,
    post_indicator_valve boolean DEFAULT FALSE,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_service_valve (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code),
    FOREIGN KEY (valve_type) REFERENCES domains.water_valve_type (code),
    FOREIGN KEY (valve_status) REFERENCES domains.pipeline_valve_status (code),
    FOREIGN KEY (clockwise_to_close) REFERENCES domains.pipeline_valve_close_direction (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.service_valve USING gist (shape);



-- FILE: ../../db/03_datasets/storage.sql
-- TABLE: storage
CREATE TABLE IF NOT EXISTS watersystem.storage (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Storage',
    height numeric,
    width numeric,
    volume numeric,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_storage (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.storage USING gist (shape);



-- FILE: ../../db/03_datasets/system_meter.sql
-- TABLE: system_meter
CREATE TABLE IF NOT EXISTS watersystem.system_meter (
    object_id serial,
    asset_id varchar(64) DEFAULT 'System Meter',
    account_id varchar(64),
    diameter smallint DEFAULT 0,
    manufacturer smallint,
    design_model bigint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_system_meter (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_meter_diameter (code),
    FOREIGN KEY (manufacturer) REFERENCES domains.manufactured_types (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.system_meter USING gist (shape);



-- FILE: ../../db/03_datasets/system_valve.sql
-- TABLE: system_valve
CREATE TABLE IF NOT EXISTS watersystem.system_valve (
    object_id serial,
    asset_id varchar(64) DEFAULT 'System Valve',
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

-- PostGIS index
CREATE INDEX ON watersystem.system_valve USING gist (shape);



-- FILE: ../../db/03_datasets/treatment_plant.sql
-- TABLE: treatment_plant
CREATE TABLE IF NOT EXISTS watersystem.treatment_plant (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Treatment Plant',
    permitted_capacity numeric,
    rated_capacity numeric,
    average_daily_flow numeric,
    filtration_type smallint,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.water_treatment_plant_type (code),
    FOREIGN KEY (filtration_type) REFERENCES domains.water_supply_filtration_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.treatment_plant USING gist (shape);



-- FILE: ../../db/03_datasets/water_main.sql
-- TABLE: water_main
CREATE TABLE IF NOT EXISTS watersystem.water_main (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Main',
    material smallint DEFAULT 0,
    diameter smallint DEFAULT 0,
    water_type smallint DEFAULT 1,
    measured_length numeric(8, 2),
    tracer_wire boolean DEFAULT FALSE,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_line_water_main (code),
    FOREIGN KEY (diameter) REFERENCES domains.water_main_diameter (code),
    FOREIGN KEY (material) REFERENCES domains.water_main_material (code),
    FOREIGN KEY (water_type) REFERENCES domains.water_type (code),
    CHECK (measured_length > 0)
)
INHERITS (
    watersystem.linear_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.water_main USING gist (shape);
CREATE INDEX ON watersystem.water_main (shape_length);



-- FILE: ../../db/03_datasets/water_pump_station_boundary.sql
-- TABLE: water_pump_station_boundary
CREATE TABLE IF NOT EXISTS watersystem.water_pump_station_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Pump Station Boundary',
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_structure_boundary_water_pump_station_boundary (code)
)
INHERITS (
    watersystem.polygonal_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.water_pump_station_boundary (shape_area);
CREATE INDEX ON watersystem.water_pump_station_boundary (shape_length);
CREATE INDEX ON watersystem.water_pump_station_boundary USING gist (shape);



-- FILE: ../../db/03_datasets/water_storage_boundary.sql
-- TABLE: water_storage_boundary
CREATE TABLE IF NOT EXISTS watersystem.water_storage_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Storage Boundary',
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_structure_boundary_water_storage_boundary (code)
)
INHERITS (
    watersystem.polygonal_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.water_storage_boundary (shape_area);
CREATE INDEX ON watersystem.water_storage_boundary (shape_length);
CREATE INDEX ON watersystem.water_storage_boundary USING gist (shape);



-- FILE: ../../db/03_datasets/water_supply_boundary.sql
-- TABLE: water_supply_boundary
CREATE TABLE IF NOT EXISTS watersystem.water_supply_boundary (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Water Supply Boundary',
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_structure_boundary_water_supply_boundary (code)
)
INHERITS (
    watersystem.polygonal_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.water_supply_boundary (shape_area);
CREATE INDEX ON watersystem.water_supply_boundary (shape_length);
CREATE INDEX ON watersystem.water_supply_boundary USING gist (shape);



-- FILE: ../../db/03_datasets/well.sql
-- TABLE: well
CREATE TABLE IF NOT EXISTS watersystem.well (
    object_id serial,
    asset_id varchar(64) DEFAULT 'Well',
    filtration_type smallint,
    bore_depth numeric,
    aquiler_depth numeric,
    permitted_flow numeric,
    available_flow numeric,
    last_maint date,
    FOREIGN KEY (asset_type) REFERENCES domains.asset_type_water_device_supply_welltype (code),
    FOREIGN KEY (filtration_type) REFERENCES domains.water_supply_filtration_type (code)
)
INHERITS (
    watersystem.punctual_asset
);

-- PostGIS index
CREATE INDEX ON watersystem.well USING gist (shape);



-- FILE: ../../db/04_constraints/04_constraints.sql
-- NOTE: Fixed limitation of the inheritance feature
DO $$
DECLARE
    mytables record;
BEGIN
    FOR mytables IN
    SELECT
        table_schema,
        table_name
    FROM
        information_schema.tables
    WHERE
        table_schema = 'water_system'
        AND table_name NOT LIKE ('asset')
            LOOP
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD PRIMARY KEY (global_id);', mytables.table_name, mytables.table_schema);
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD FOREIGN KEY (lifecycle_status) REFERENCES domains.lifecycle (code);', mytables.table_name, mytables.table_schema);
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD FOREIGN KEY (owned_by) REFERENCES domains.asset_owner (code);', mytables.table_name, mytables.table_schema);
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD FOREIGN KEY (main_by) REFERENCES domains.asset_manager (code);', mytables.table_name, mytables.table_schema);
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD FOREIGN KEY (spatial_source) REFERENCES domains.spatial_source (code);', mytables.table_name, mytables.table_schema);
                EXECUTE format('ALTER TABLE IF EXISTS %2$I.%1$I ADD FOREIGN KEY (spatial_confidence) REFERENCES domains.spatial_confidence (code);', mytables.table_name, mytables.table_schema);
            END LOOP;
END
$$;



-- FILE: ../../db/05_functions/01_functions.sql
-- FUNCTION: created_user
CREATE OR REPLACE FUNCTION created_user ()
    RETURNS TRIGGER
    LANGUAGE 'plpgsql'
    COST 100 VOLATILE NOT LEAKPROOF
    AS $body$
BEGIN
    NEW.created_user := CURRENT_USER;
    NEW.created_date := CURRENT_TIMESTAMP;
    RETURN new;
END;
$body$;

-- FUNCTION: last_edited_user
CREATE OR REPLACE FUNCTION last_edited_user ()
    RETURNS TRIGGER
    LANGUAGE 'plpgsql'
    COST 100 VOLATILE NOT LEAKPROOF
    AS $body$
BEGIN
    NEW.created_user := CURRENT_USER;
    NEW.created_date := CURRENT_TIMESTAMP;
    RETURN new;
END;
$body$;


-- FILE: ../../db/05_functions/02_triggers.sql
-- PERF: Create trigger created_user on all tables in water_system
DO $$
DECLARE
    mytables record;
BEGIN
    FOR mytables IN
    SELECT
        table_schema,
        table_name
    FROM
        information_schema.tables
    WHERE
        table_schema = 'watersystem'
        AND table_name NOT LIKE ('%asset')
            LOOP
                EXECUTE format('ALTER TABLE %2$I.%1$I
                        ADD COLUMN IF NOT EXISTS created_date timestamptz,
                        ADD COLUMN IF NOT EXISTS created_user varchar(64);
                ', mytables.table_name, mytables.table_schema);

                EXECUTE format('CREATE OR REPLACE TRIGGER created_user
                        BEFORE INSERT ON %2$I.%1$I
                        FOR EACH ROW
                        EXECUTE FUNCTION created_user ();
                ', mytables.table_name, mytables.table_schema);
            END LOOP;
END
$$;

-- PERF: Create trigger last_edited_user on all tables in water_system
DO $$
DECLARE
    mytables record;
BEGIN
    FOR mytables IN
    SELECT
        table_schema,
        table_name
    FROM
        information_schema.tables
    WHERE
        table_schema = 'watersystem'
        AND table_name NOT LIKE ('%asset')
            LOOP
                EXECUTE format('ALTER TABLE %2$I.%1$I
                        ADD COLUMN IF NOT EXISTS last_edited_date timestamptz,
                        ADD COLUMN IF NOT EXISTS last_edited_user varchar(20);
                ', mytables.table_name, mytables.table_schema);

                EXECUTE format('CREATE OR REPLACE TRIGGER last_edited_user
                        BEFORE UPDATE ON %2$I.%1$I
                        FOR EACH ROW
                        EXECUTE FUNCTION last_edited_user ();
                ', mytables.table_name, mytables.table_schema);
            END LOOP;
END
$$;


-- FILE: ../../db/06_seeds/01_initial_data/asset_manager.sql
-- TABLE: asset_manager
INSERT INTO domains.asset_manager (code, description)
VALUES
    (1, 'Our Agency'),
    (2, 'Private'),
    (3, 'Other');


-- FILE: ../../db/06_seeds/01_initial_data/asset_owner.sql
-- TABLE: asset_owner
INSERT INTO domains.asset_owner (code, description)
VALUES
    (1, 'Our Agency'),
    (2, 'Private'),
    (3, 'Other');


-- FILE: ../../db/06_seeds/01_initial_data/asset_type_structure_boundary_water_pump_station_boundary.sql
-- TABLE: asset_type_structure_boundary_water_pump_station_boundary
INSERT INTO domains.asset_type_structure_boundary_water_pump_station_boundary (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Booster Station'),
    (2, 'Pump Station');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_structure_boundary_water_storage_boundary.sql
-- TABLE: asset_type_structure_boundary_water_storage_boundary
INSERT INTO domains.asset_type_structure_boundary_water_storage_boundary (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Hydropneumatic Tank'),
    (2, 'Reservoir'),
    (3, 'Retention Area'),
    (4, 'Storage Tank'),
    (5, 'Surge Tank'),
    (6, 'Tower');


-- FILE: ../../db/06_seeds/01_initial_data/asset_type_structure_boundary_water_supply_boundary.sql
-- TABLE: asset_type_structure_boundary_water_supply_boundary
INSERT INTO domains.asset_type_structure_boundary_water_supply_boundary (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Interconnect'),
    (2, 'Treatment Plant'),
    (3, 'Well');


-- FILE: ../../db/06_seeds/01_initial_data/asset_type_structure_line_pipeline_casing.sql
-- TABLE: asset_type_structure_line_pipeline_casing
INSERT INTO domains.asset_type_structure_line_pipeline_casing (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Casing');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_assembly_backflow.sql
-- TABLE: asset_type_water_assembly_backflow
INSERT INTO domains.asset_type_water_assembly_backflow (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Double Check Detector'),
    (2, 'Double Check Valve'),
    (3, 'Reduced Pressure Detector'),
    (4, 'Reduced Pressure Zone');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_fire_hydrant.sql
-- TABLE: asset_type_water_device_fire_hydrant
INSERT INTO domains.asset_type_water_device_fire_hydrant (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Fire Hydrant');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_flow_valve.sql
-- TABLE: asset_type_water_device_flow_valve
INSERT INTO domains.asset_type_water_device_flow_valve (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Air Gape'),
    (2, 'Altitude'),
    (3, 'Check');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_flushing_and_blow_off.sql
-- TABLE: asset_type_water_device_flushing_and_blow_off
INSERT INTO domains.asset_type_water_device_flushing_and_blow_off (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Automatic Flushing'),
    (2, 'Blow Off'),
    (3, 'Fire Plug Valve'),
    (4, 'Hydrant'),
    (5, 'Post Hydrant');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_pressure_valve.sql
-- TABLE: asset_type_water_device_pressure_valve
INSERT INTO domains.asset_type_water_device_pressure_valve (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Air and Vacuum'),
    (2, 'Air Release'),
    (3, 'Combination Air'),
    (4, 'Pressure Limiting'),
    (5, 'Pressure Reducing'),
    (6, 'Pressure Release'),
    (7, 'Pressure Sustaining'),
    (8, 'Surge');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_pump.sql
-- TABLE: asset_type_water_device_pump
INSERT INTO domains.asset_type_water_device_pump (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Bosster'),
    (2, 'Chemical'),
    (3, 'Primary');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_service_connection.sql
-- TABLE: asset_type_water_device_service_connection
INSERT INTO domains.asset_type_water_device_service_connection (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Commercial'),
    (2, 'Fire'),
    (3, 'Industrial'),
    (4, 'Irrigation'),
    (5, 'Residential');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_service_meter.sql
-- TABLE: asset_type_water_device_service_meter
INSERT INTO domains.asset_type_water_device_service_meter (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Commercial'),
    (2, 'Fire'),
    (3, 'Industrial'),
    (4, 'Irrigation'),
    (5, 'Residential');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_service_valve.sql
-- TABLE: asset_type_water_device_service_valve
INSERT INTO domains.asset_type_water_device_service_valve (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Blow Off'),
    (2, 'Flap'),
    (3, 'Hydrant'),
    (4, 'Purge'),
    (5, 'Sampling'),
    (6, 'Service');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_storage.sql
-- TABLE: asset_type_water_device_storage
INSERT INTO domains.asset_type_water_device_storage (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Hydropneumatic Tank'),
    (2, 'Reservoir'),
    (3, 'Standpipe'),
    (4, 'Storage Tank'),
    (5, 'Surge Tank'),
    (6, 'Tower');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_supply_welltype.sql
-- TABLE: asset_type_water_device_supply_welltype
INSERT INTO domains.asset_type_water_device_supply_welltype (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Water'),
    (2, 'Monitoring'),
    (3, 'Injection');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_system_meter.sql
-- TABLE: asset_type_water_device_system_meter
INSERT INTO domains.asset_type_water_device_system_meter (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Bulk'),
    (2, 'DMA'),
    (3, 'Emergency Connection'),
    (4, 'Pump Station');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_device_system_valve.sql
-- TABLE: asset_type_water_device_system_valve
INSERT INTO domains.asset_type_water_device_system_valve (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Bypass'),
    (2, 'Interconnect'),
    (3, 'Isolation Station'),
    (4, 'Pressure Zone'),
    (5, 'Supply'),
    (6, 'System');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_junction_fitting.sql
-- TABLE: asset_type_water_junction_fitting
INSERT INTO domains.asset_type_water_junction_fitting (code, description)
VALUES
    (0, 'Unknown'),
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



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_line_service.sql
-- TABLE: asset_type_water_line_service
INSERT INTO domains.asset_type_water_line_service (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Air and Vacuum Service'),
    (2, 'Blow Off Service'),
    (3, 'Commercial Service'),
    (4, 'Fire Service'),
    (5, 'Hydrant Service'),
    (6, 'Industrical Service'),
    (7, 'Irrigation Service'),
    (8, 'Residential Service'),
    (9, 'Sampling Service');



-- FILE: ../../db/06_seeds/01_initial_data/asset_type_water_line_water_main.sql
-- TABLE: asset_type_water_line_water_main
INSERT INTO domains.asset_type_water_line_water_main (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Distribution Main'),
    (2, 'Drain'),
    (3, 'Overflow'),
    (4, 'Production'),
    (5, 'Transmission Main');



-- FILE: ../../db/06_seeds/01_initial_data/lifecycle.sql
-- TABLE: lifecycle
INSERT INTO domains.lifecycle (code, description)
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



-- FILE: ../../db/06_seeds/01_initial_data/manufactured_types.sql
-- TABLE: manufactured_types
INSERT INTO domains.manufactured_types (code, description)
VALUES
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



-- FILE: ../../db/06_seeds/01_initial_data/pipeline_casing_diameter.sql
-- TABLE: pipeline_casing_diameter
INSERT INTO domains.pipeline_casing_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (100, '4"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"'),
    (700, '28"'),
    (800, '32"'),
    (900, '36"'),
    (1000, '40"'),
    (1200, '48"');



-- FILE: ../../db/06_seeds/01_initial_data/pipeline_casing_fill_type.sql
-- TABLE: pipeline_casing_fill_type
INSERT INTO domains.pipeline_casing_fill_type (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Grout'),
    (2, 'Pea Gravel'),
    (3, 'Sand');



-- FILE: ../../db/06_seeds/01_initial_data/pipeline_valve_close_direction.sql
-- TABLE: pipeline_valve_close_direction
INSERT INTO domains.pipeline_valve_close_direction (code, description)
VALUES
    (0, 'Counter Clockwise'),
    (1, 'Clockwise');



-- FILE: ../../db/06_seeds/01_initial_data/pipeline_valve_status.sql
-- TABLE: pipeline_valve_status
INSERT INTO domains.pipeline_valve_status (code, description)
VALUES
    (0, 'Closed'),
    (1, 'Open');



-- FILE: ../../db/06_seeds/01_initial_data/spatial_confidence.sql
-- TABLE: spatial_confidence
INSERT INTO domains.spatial_confidence (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'High'),
    (2, 'Medium'),
    (3, 'Low');



-- FILE: ../../db/06_seeds/01_initial_data/spatial_source.sql
-- TABLE: spatial_source
INSERT INTO domains.spatial_source (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'As-Built'),
    (2, 'CAD'),
    (3, 'Digitilized'),
    (4, 'GPS/GNSS'),
    (5, 'Field Sketch');



-- FILE: ../../db/06_seeds/01_initial_data/water_diameter.sql
-- TABLE: water_diameter
INSERT INTO domains.water_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (15, '1/2"'),
    (20, '3/4"'),
    (25, '1"'),
    (32, '1 1/4"'),
    (40, '1 1/2"'),
    (50, '2"'),
    (60, '2 1/2"'),
    (75, '3"'),
    (85, '3 1/2"'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"'),
    (700, '28"'),
    (800, '32"'),
    (900, '36"'),
    (1000, '40"'),
    (1200, '48"');



-- FILE: ../../db/06_seeds/01_initial_data/water_fire_hydrant_manufacturer.sql
-- TABLE: water_fire_hydrant_manufacturer
INSERT INTO domains.water_fire_hydrant_manufacturer (code, description)
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



-- FILE: ../../db/06_seeds/01_initial_data/water_hydrant_nozzle_diameter.sql
-- TABLE: water_hydrant_nozzle_diameter
INSERT INTO domains.water_hydrant_nozzle_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (50, '2"'),
    (60, '2 1/2"'),
    (75, '3"'),
    (85, '3 1/2"'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"');



-- FILE: ../../db/06_seeds/01_initial_data/water_hydrant_service_diameter.sql
-- TABLE: water_hydrant_service_diameter
INSERT INTO domains.water_hydrant_service_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"');



-- FILE: ../../db/06_seeds/01_initial_data/water_interconnect_connection_type.sql
-- TABLE: water_interconnect_connection_type
INSERT INTO domains.water_interconnect_connection_type (code, description)
VALUES
    (1, 'Buy'),
    (2, 'Sell'),
    (3, 'Buy or Sell');



-- FILE: ../../db/06_seeds/01_initial_data/water_main_diameter.sql
-- TABLE: water_main_diameter
INSERT INTO domains.water_main_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (15, '1/2"'),
    (20, '3/4"'),
    (25, '1"'),
    (32, '1 1/4"'),
    (40, '1 1/2"'),
    (50, '2"'),
    (60, '2 1/2"'),
    (75, '3"'),
    (85, '3 1/2"'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"'),
    (700, '28"'),
    (800, '32"'),
    (900, '36"'),
    (1000, '40"'),
    (1200, '48"');



-- FILE: ../../db/06_seeds/01_initial_data/water_main_material.sql
-- TABLE: water_main_material
INSERT INTO domains.water_main_material (code, description)
VALUES
    (0, 'Unknown'),
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



-- FILE: ../../db/06_seeds/01_initial_data/water_meter_diameter.sql
-- TABLE: water_meter_diameter
INSERT INTO domains.water_meter_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (20, '3/4"'),
    (25, '1"'),
    (32, '1 1/4"'),
    (40, '1 1/2"'),
    (50, '2"'),
    (60, '2 1/2"'),
    (75, '3"'),
    (85, '3 1/2"'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"'),
    (700, '28"'),
    (800, '32"'),
    (900, '36"');



-- FILE: ../../db/06_seeds/01_initial_data/water_pump_diameter.sql
-- TABLE: water_pump_diameter
INSERT INTO domains.water_pump_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"'),
    (300, '12"'),
    (350, '14"'),
    (400, '16"'),
    (450, '18"'),
    (500, '20"'),
    (600, '24"'),
    (700, '28"'),
    (800, '32"'),
    (900, '36"'),
    (1000, '40"'),
    (1200, '48"');



-- FILE: ../../db/06_seeds/01_initial_data/water_pump_type.sql
-- TABLE: water_pump_type
INSERT INTO domains.water_pump_type (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Axial Flow'),
    (2, 'Centrifugal'),
    (3, 'Jet'),
    (4, 'Reciprocating'),
    (5, 'Rotary'),
    (6, 'Turbine');



-- FILE: ../../db/06_seeds/01_initial_data/water_sample_type.sql
-- TABLE: water_sample_type
INSERT INTO domains.water_sample_type (code, description)
VALUES
    (1, 'Grab Sample'),
    (2, 'Composite Sample'),
    (3, 'Other');



-- FILE: ../../db/06_seeds/01_initial_data/water_service_diameter.sql
-- TABLE: water_service_diameter
INSERT INTO domains.water_service_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (15, '1/2"'),
    (20, '3/4"'),
    (25, '1"'),
    (32, '1 1/4"'),
    (40, '1 1/2"'),
    (50, '2"'),
    (60, '2 1/2"'),
    (75, '3"'),
    (85, '3 1/2"'),
    (100, '4"'),
    (125, '5"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"');



-- FILE: ../../db/06_seeds/01_initial_data/water_service_material.sql
-- TABLE: water_service_material
INSERT INTO domains.water_service_material (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Cast Iron - CAS'),
    (2, 'Copper - COP'),
    (3, 'Ductile Iron - DIP'),
    (4, 'Polyvinyl Chloride - PVC'),
    (5, 'Lead - LP');



-- FILE: ../../db/06_seeds/01_initial_data/water_supply_filtration_type.sql
-- TABLE: water_supply_filtration_type
INSERT INTO domains.water_supply_filtration_type (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Carbon'),
    (2, 'Reverse Osmosis'),
    (3, 'Ultraviolet Light'),
    (4, 'Sediment'),
    (5, 'Biological');



-- FILE: ../../db/06_seeds/01_initial_data/water_treatment_plant_type.sql
-- TABLE: water_treatment_plant_type
INSERT INTO domains.water_treatment_plant_type (code, description)
VALUES
    (1, 'Goundwater'),
    (2, 'Surface Water'),
    (3, 'Desalination');



-- FILE: ../../db/06_seeds/01_initial_data/water_type.sql
-- TABLE: water_type
INSERT INTO domains.water_type (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Potable'),
    (2, 'Irrigation'),
    (3, 'Fire'),
    (4, 'Raw'),
    (5, 'Intermediate'),
    (6, 'Finished');



-- FILE: ../../db/06_seeds/01_initial_data/water_valve_type.sql
-- TABLE: water_valve_type
INSERT INTO domains.water_valve_type (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Ball'),
    (2, 'Butterfly'),
    (3, 'Cone'),
    (4, 'Gate'),
    (5, 'Plug');



COMMIT;
