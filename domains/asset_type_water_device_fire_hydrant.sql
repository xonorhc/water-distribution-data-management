CREATE TABLE IF NOT EXISTS asset_type_water_device_fire_hydrant (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_fire_hydrant (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Fire Hydrant');
