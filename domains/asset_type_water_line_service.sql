CREATE TABLE IF NOT EXISTS asset_type_water_line_service (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_line_service (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Air and Vacuum Service'),
    (2, 'Blow Off Service'),
    (3, 'Commercial Service'),
    (4, 'Fire Service'),
    (5, 'Hydrant Service'),
    (6, 'Industrical Service'),
    (7, 'Irrigation Service'),
    (8, 'Residential Service'),
    (9, 'Sampling Service');
