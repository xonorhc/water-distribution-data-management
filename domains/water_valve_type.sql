CREATE TABLE IF NOT EXISTS water_valve_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_valve_type (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Ball'),
    (2, 'Butterfly'),
    (3, 'Cone'),
    (4, 'Gate'),
    (5, 'Plug');
