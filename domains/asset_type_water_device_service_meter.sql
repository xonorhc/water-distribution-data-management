CREATE TABLE IF NOT EXISTS asset_type_water_device_service_meter (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_service_meter (description)
VALUES
    ('Unknow'),
    ('Commercial'),
    ('Fire'),
    ('Industrial'),
    ('Irrigation'),
    ('Residential');
