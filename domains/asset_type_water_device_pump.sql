CREATE TABLE IF NOT EXISTS asset_type_water_device_pump (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_pump (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Bosster'),
    (2, 'Chemical'),
    (3, 'Primary');
