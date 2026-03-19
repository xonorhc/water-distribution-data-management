CREATE TABLE IF NOT EXISTS water_pump_type (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_pump_type (description)
VALUES
    ('Unknown'),
    ('Axial Flow'),
    ('Centrifugal'),
    ('Jet'),
    ('Reciprocating'),
    ('Rotary'),
    ('Turbine');
