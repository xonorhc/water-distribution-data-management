CREATE TABLE IF NOT EXISTS water_pump_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_pump_diameter (code, description)
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
    (1200, '48"');

