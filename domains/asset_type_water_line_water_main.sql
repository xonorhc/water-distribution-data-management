CREATE TABLE IF NOT EXISTS asset_type_water_line_water_main (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_line_water_main (description)
VALUES
    ('Unknow'),
    ('Distribution Main'),
    ('Drain'),
    ('Overflow'),
    ('Production'),
    ('Transmission Main');
