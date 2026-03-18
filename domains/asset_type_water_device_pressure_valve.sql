CREATE TABLE IF NOT EXISTS asset_type_water_device_pressure_valve (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_pressure_valve (description)
VALUES
    ('Unknow'),
    ('Air and Vacuum'),
    ('Air Release'),
    ('Combination Air'),
    ('Pressure Limiting'),
    ('Pressure Reducing'),
    ('Pressure Release'),
    ('Pressure Sustaining'),
    ('Surge');
