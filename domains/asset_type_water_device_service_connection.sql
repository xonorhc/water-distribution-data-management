CREATE TABLE IF NOT EXISTS asset_type_water_device_service_connection (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_service_connection (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Commercial'),
    (2, 'Fire'),
    (3, 'Industrial'),
    (4, 'Irrigation'),
    (5, 'Residential');
