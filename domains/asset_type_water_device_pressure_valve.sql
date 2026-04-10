BEGIN;

CREATE TABLE IF NOT EXISTS asset_type_water_device_pressure_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_pressure_valve (code, description)
VALUES
(1, 'Air and Vacuum'),
(2, 'Air Release'),
(3, 'Combination Air'),
(4, 'Pressure Limiting'),
(5, 'Pressure Reducing'),
(6, 'Pressure Release'),
(7, 'Pressure Sustaining'),
(8, 'Surge');

COMMIT;
