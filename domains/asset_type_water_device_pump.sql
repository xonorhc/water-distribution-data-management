CREATE TABLE IF NOT EXISTS asset_type_water_device_pump (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_pump (description)
VALUES
    ('Unknow'),
    ('Bosster'),
    ('Chemical'),
    ('Primary');
