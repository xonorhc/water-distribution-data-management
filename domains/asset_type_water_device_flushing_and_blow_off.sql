CREATE TABLE IF NOT EXISTS asset_type_water_device_flushing_and_blow_off (
    code smallserial,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_flushing_and_blow_off (description)
VALUES
    ("Unknow"),
    ("Automatic Flushing"),
    ("Blow Off"),
    ("Fire Plug Valve"),
    ("Hydrant"),
    ("Post Hydrant");
