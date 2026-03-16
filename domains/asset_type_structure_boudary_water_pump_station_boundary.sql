-- FIX: Change this name
CREATE TABLE IF NOT EXISTS asset_type_structure_boudary_water_pump_station_boundary (
    code smallserial,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_structure_boudary_water_pump_station_boundary (description)
VALUES
    ("Unknow"),
    ("Booster Station"),
    ("Pump Station");
