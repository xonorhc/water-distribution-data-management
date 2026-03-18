CREATE TABLE IF NOT EXISTS asset_type_water_assembly_backflow (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_assembly_backflow (description)
VALUES
    ('Unknow'),
    ('Double Check Detector'),
    ('Double Check Valve'),
    ('Reduced Pressure Detector'),
    ('Reduced Pressure Zone');
