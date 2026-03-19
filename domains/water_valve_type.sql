CREATE TABLE IF NOT EXISTS water_valve_type (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_valve_type (description)
VALUES
    ('Unknown'),
    ('Ball'),
    ('Butterfly'),
    ('Cone'),
    ('Gate'),
    ('Plug');
