CREATE TABLE IF NOT EXISTS asset_type_water_device_system_valve (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_system_valve (description)
VALUES
    ('Unknow'),
    ('Bypass'),
    ('Interconnect'),
    ('Isolation Station'),
    ('Pressure Zone'),
    ('Supply'),
    ('System');
