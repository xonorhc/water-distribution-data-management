CREATE TABLE IF NOT EXISTS water_valve_surface_type (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_valve_surface_type (description)
VALUES
    ('Asphalt'),
    ('Brick'),
    ('Concrete'),
    ('Dirt'),
    ('Grass'),
    ('Gravel'),
    ('Other');
