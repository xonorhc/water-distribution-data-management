CREATE TABLE IF NOT EXISTS asset_type_water_assembly_backflow (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_assembly_backflow (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Double Check Detector'),
    (2, 'Double Check Valve'),
    (3, 'Reduced Pressure Detector'),
    (4, 'Reduced Pressure Zone');
