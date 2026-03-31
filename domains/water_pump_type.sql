CREATE TABLE IF NOT EXISTS water_pump_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_pump_type (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Axial Flow'),
    (2, 'Centrifugal'),
    (3, 'Jet'),
    (4, 'Reciprocating'),
    (5, 'Rotary'),
    (6, 'Turbine');
