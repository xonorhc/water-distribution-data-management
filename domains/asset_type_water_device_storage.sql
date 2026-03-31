CREATE TABLE IF NOT EXISTS asset_type_water_device_storage (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_storage (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Hydropneumatic Tank'),
    (2, 'Reservoir'),
    (3, 'Standpipe'),
    (4, 'Storage Tank'),
    (5, 'Surge Tank'),
    (6, 'Tower');
