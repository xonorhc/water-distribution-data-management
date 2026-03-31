CREATE TABLE IF NOT EXISTS asset_type_water_device_flushing_and_blow_off (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_flushing_and_blow_off (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Automatic Flushing'),
    (2, 'Blow Off'),
    (3, 'Fire Plug Valve'),
    (4, 'Hydrant'),
    (5, 'Post Hydrant');
