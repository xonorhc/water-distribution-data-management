CREATE TABLE IF NOT EXISTS asset_type_water_device_system_meter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_device_system_meter (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Bulk'),
    (2, 'DMA'),
    (3, 'Emergency Connection'),
    (4, 'Pump Station');
