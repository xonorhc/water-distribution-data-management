BEGIN;

CREATE TABLE IF NOT EXISTS asset_type_water_device_flow_valve (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_flow_valve (code, description)
VALUES
(1, 'Air Gape'),
(2, 'Altitude'),
(3, 'Check');

COMMIT;
