CREATE TABLE IF NOT EXISTS water_service_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_service_diameter (code, description)
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
    (100, '4"'),
    (150, '6"'),
    (200, '8"'),
    (250, '10"');

