CREATE TABLE IF NOT EXISTS asset_type_water_line_water_main (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_line_water_main (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Distribution Main'),
    (2, 'Drain'),
    (3, 'Overflow'),
    (4, 'Production'),
    (5, 'Transmission Main');
