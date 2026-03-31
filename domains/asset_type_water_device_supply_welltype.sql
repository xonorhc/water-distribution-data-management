CREATE TABLE IF NOT EXISTS asset_type_water_device_supply_welltype (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_supply_welltype (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Water'),
    (2, 'Monitoring'),
    (3, 'Injection');
