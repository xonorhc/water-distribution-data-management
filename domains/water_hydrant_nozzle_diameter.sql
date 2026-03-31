CREATE TABLE IF NOT EXISTS water_hydrant_nozzle_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_hydrant_nozzle_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (60, '2 1/2"'),
    (100, '4"'),
    (115, '4 1/2"'),
    (125, '5"'),
    (135, '5 1/4"'),
    (150, '6"');
m   

