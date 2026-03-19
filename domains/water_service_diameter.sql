CREATE TABLE IF NOT EXISTS water_service_diameter (
    code numeric(4, 2) PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_service_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (0.5, '1/2"'),
    (0.75, '3/4"'),
    (1, '1"'),
    (1.25, '1 1/4"'),
    (1.5, '1 1/2"'),
    (2, '2"'),
    (2.25, '2 1/4"'),
    (2.5, '2 1/2"'),
    (3, '3"'),
    (4, '4"'),
    (4.5, '4 1/2"'),
    (5.25, '5 1/4"'),
    (6, '6"'),
    (8, '8"'),
    (10, '10"');
