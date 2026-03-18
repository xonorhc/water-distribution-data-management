CREATE TABLE IF NOT EXISTS asset_type_water_line_service (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_line_service (description)
VALUES
    ('Unknow'),
    ('Air and Vacuum Service'),
    ('Blow Off Service'),
    ('Commercial Service'),
    ('Fire Service'),
    ('Hydrant Service'),
    ('Industrical Service'),
    ('Irrigation Service'),
    ('Residential Service'),
    ('Sampling Service');
