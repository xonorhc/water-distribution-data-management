CREATE TABLE IF NOT EXISTS asset_type_water_junction_fitting (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_junction_fitting (description)
VALUES
    ('Unknow'),
    ('Clamp'),
    ('Corporation Stop'),
    ('Coupling'),
    ('Cross'),
    ('Elbow'),
    ('End Cup'),
    ('Expansion Joint'),
    ('Flange'),
    ('Plug'),
    ('Reducer'),
    ('Reducing Cross'),
    ('Reducing Tee'),
    ('Saddle'),
    ('Screw'),
    ('Sleeve'),
    ('Tap'),
    ('Tapping Saddle'),
    ('Taping Sleeve'),
    ('Tee'),
    ('Transition'),
    ('Weld'),
    ('Wye');
