CREATE TABLE IF NOT EXISTS asset_type_water_device_service_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_service_valve (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Blow Off'),
    (2, 'Flap'),
    (3, 'Hydrant'),
    (4, 'Purge'),
    (5, 'Sampling'),
    (6, 'Service');
