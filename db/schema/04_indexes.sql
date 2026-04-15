-- TABLE: asset
-- TABLE: linear_asset
-- TABLE: polygonal_asset
-- TABLE: punctual_asset
-- TABLE: backflow
CREATE INDEX ON backflow USING gist (shape);

-- TABLE: fire_hydrant
CREATE INDEX ON fire_hydrant USING gist (shape);

-- TABLE: fitting
CREATE INDEX ON fitting USING gist (shape);

-- TABLE: flow_valve
CREATE INDEX ON flow_valve USING gist (shape);

-- TABLE: flushing_and_blow_off
CREATE INDEX ON flushing_and_blow_off USING gist (shape);

-- TABLE: interconnect
CREATE INDEX ON interconnect USING gist (shape);

-- TABLE: pipe_casing
CREATE INDEX ON pipe_casing USING gist (shape);

CREATE INDEX ON pipe_casing (shape_length);

-- TABLE: pressure_valve
CREATE INDEX ON pressure_valve USING gist (shape);

-- TABLE: pump
CREATE INDEX ON pump USING gist (shape);

-- TABLE: sample_station
CREATE INDEX ON sample_station USING gist (shape);

-- TABLE: service
CREATE INDEX ON service USING gist (shape);

CREATE INDEX ON service (shape_length);

-- TABLE: service_connection
CREATE INDEX ON service_connection USING gist (shape);

-- TABLE: service_meter
CREATE INDEX ON service_meter USING gist (shape);

-- TABLE: service_territory
CREATE INDEX ON service_territory (shape_area);

CREATE INDEX ON service_territory (shape_length);

CREATE INDEX ON service_territory USING gist (shape);

-- TABLE: service_valve
CREATE INDEX ON service_valve USING gist (shape);

-- TABLE: storage
CREATE INDEX ON storage USING gist (shape);

-- TABLE: system_meter
CREATE INDEX ON system_meter USING gist (shape);

-- TABLE: system_valve
CREATE INDEX ON system_valve USING gist (shape);

-- TABLE: well
CREATE INDEX ON well USING gist (shape);

-- TABLE: water_supply_boundary
CREATE INDEX ON water_supply_boundary (shape_area);

CREATE INDEX ON water_supply_boundary (shape_length);

CREATE INDEX ON water_supply_boundary USING gist (shape);

-- TABLE: water_storage_boundary
CREATE INDEX ON water_storage_boundary (shape_area);

CREATE INDEX ON water_storage_boundary (shape_length);

CREATE INDEX ON water_storage_boundary USING gist (shape);

-- TABLE: water_pump_station_boundary
CREATE INDEX ON water_pump_station_boundary (shape_area);

CREATE INDEX ON water_pump_station_boundary (shape_length);

CREATE INDEX ON water_pump_station_boundary USING gist (shape);

-- TABLE: treatment_plant
CREATE INDEX ON treatment_plant USING gist (shape);

-- TABLE: water_main
CREATE INDEX ON water_main USING gist (shape);

CREATE INDEX ON water_main (shape_length);

