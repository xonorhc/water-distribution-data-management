CREATE TABLE IF NOT EXISTS water_hydrant_nozzle_diameter (
    code numeric(4, 2) PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_hydrant_nozzle_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (2.5, '2 1/2"'),
    (4.5, '4 1/2"'),
    (5, '5"'),
    (6, '6"'),
    (4, '4"'),
    (5.25, '5 1/4"');
