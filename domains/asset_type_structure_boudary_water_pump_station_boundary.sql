CREATE TABLE IF NOT EXISTS asset_type_structure_boudary_water_pump_station_boundary (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_structure_boudary_water_pump_station_boundary (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Booster Station'),
    (2, 'Pump Station');

