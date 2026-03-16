CREATE TABLE IF NOT EXISTS asset_type_water_device_storage (
    code smallserial,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_storage (description)
VALUES
    ("Unknow"),
    ("Hydropneumatic Tank"),
    ("Standpipe"),
    ("Storage Tank"),
    ("Surge Tank"),
    ("Tower");
