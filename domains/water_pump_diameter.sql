CREATE TABLE IF NOT EXISTS water_pump_diameter (
    code numeric(4, 2) PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_pump_diameter (code, description)
VALUES
    (0, 'Unknown'),
    (4, '4"'),
    (6, '6"'),
    (8, '8"'),
    (10, '10"'),
    (12, '12"'),
    (14, '14"'),
    (15, '15"'),
    (16, '16"'),
    (18, '18"'),
    (20, '20"'),
    (24, '24"'),
    (36, '36"'),
    (48, '48"');
