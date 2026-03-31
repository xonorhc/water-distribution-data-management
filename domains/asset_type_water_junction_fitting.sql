CREATE TABLE IF NOT EXISTS asset_type_water_junction_fitting (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_water_junction_fitting (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Clamp'),
    (2, 'Corporation Stop'),
    (3, 'Coupling'),
    (4, 'Cross'),
    (5, 'Elbow'),
    (6, 'End Cup'),
    (7, 'Expansion Joint'),
    (8, 'Flange'),
    (9, 'Plug'),
    (10, 'Reducer'),
    (11, 'Reducing Cross'),
    (12, 'Reducing Tee'),
    (13, 'Saddle'),
    (14, 'Screw'),
    (15, 'Sleeve'),
    (16, 'Tap'),
    (17, 'Tapping Saddle'),
    (18, 'Taping Sleeve'),
    (19, 'Tee'),
    (20, 'Transition'),
    (21, 'Weld'),
    (22, 'Wye');
