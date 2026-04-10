BEGIN;

CREATE TABLE IF NOT EXISTS asset_type_water_device_system_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_system_valve (code, description)
VALUES
(1, 'Bypass'),
(2, 'Interconnect'),
(3, 'Isolation Station'),
(4, 'Pressure Zone'),
(5, 'Supply'),
(6, 'System');

COMMIT;
