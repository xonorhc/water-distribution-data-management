CREATE TABLE IF NOT EXISTS asset_type_water_device_storage (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_storage (description)
VALUES
    ('Unknow'),
    ('Hydropneumatic Tank'),
    ('Reservoir'),
    ('Standpipe'),
    ('Storage Tank'),
    ('Surge Tank'),
    ('Tower');
