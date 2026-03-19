CREATE TABLE IF NOT EXISTS water_fire_hydrant_manufacturer (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_fire_hydrant_manufacturer (description)
VALUES
    ('Unknown'),
    ('American Darling'),
    ('Clow Corporation'),
    ('Corey'),
    ('Dresser'),
    ('Eddy'),
    ('Iowa Valve'),
    ('Kennedy Valve'),
    ('M&H Valve'),
    ('Mueller CompanyA'),
    ('Traverse City'),
    ('US Pipe'),
    ('Waterous'),
    ('Wood-Mathews'),
    ('Other');
