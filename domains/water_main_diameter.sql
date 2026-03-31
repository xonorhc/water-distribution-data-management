CREATE TABLE IF NOT EXISTS water_main_diameter (
    code numeric(4, 2) PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_main_diameter (code, description)
VALUES
    (0, 'Unknown'),
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

