-- TABLE: linear_asset
CREATE INDEX ON water_system.linear_asset USING gist (shape);

-- TABLE: polygonal_asset
CREATE INDEX ON water_system.polygonal_asset USING gist (shape);

-- TABLE: punctual_asset
CREATE INDEX ON water_system.punctual_asset USING gist (shape);

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

