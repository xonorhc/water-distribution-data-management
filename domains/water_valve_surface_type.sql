CREATE TABLE IF NOT EXISTS water_valve_surface_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_valve_surface_type (code, description)
VALUES
    (1, 'Asphalt'),
    (2, 'Brick'),
    (3, 'Concrete'),
    (4, 'Dirt'),
    (5, 'Grass'),
    (6, 'Gravel'),
    (7, 'Other');
