CREATE TABLE IF NOT EXISTS water_main_diameter (
    code numeric(4, 2) PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_main_diameter (code, description)
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
    (30, '30"'),
    (36, '36"'),
    (40, '40"'),
    (42, '42"'),
    (48, '48"'),
    (54, '54"'),
    (60, '60"'),
    (66, '66"'),
    (72, '72"'),
    (75, '75"');
