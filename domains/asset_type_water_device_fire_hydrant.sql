CREATE TABLE IF NOT EXISTS asset_type_water_device_fire_hydrant (
    code smallserial,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_fire_hydrant (description)
VALUES
    ("Unknow"),
    ("Fire Hydrant");
