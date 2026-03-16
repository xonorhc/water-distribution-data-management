CREATE TABLE IF NOT EXISTS asset_type_water_device_flow_valve (
    code smallserial,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_flow_valve (description)
VALUES
    ("Unknow"),
    ("Air Gape"),
    ("Altitude"),
    ("Check");
