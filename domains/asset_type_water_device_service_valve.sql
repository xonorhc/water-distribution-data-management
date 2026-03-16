CREATE TABLE IF NOT EXISTS asset_type_water_device_service_valve (
    code smallserial,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_service_valve (description)
VALUES
    ("Unknow"),
    ("Blow Off"),
    ("Flap"),
    ("Hydrant"),
    ("Purge"),
    ("Sampling"),
    ("Service");
