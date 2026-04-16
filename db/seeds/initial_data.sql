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

