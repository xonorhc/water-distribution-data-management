BEGIN;

CREATE TABLE IF NOT EXISTS asset_type_water_device_service_meter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_service_meter (code, description)
VALUES
(1, 'Commercial'),
(2, 'Fire'),
(3, 'Industrial'),
(4, 'Irrigation'),
(5, 'Residential');

COMMIT;
