CREATE TABLE IF NOT EXISTS pipeline_valve_status (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO pipeline_valve_status (code, description)
VALUES
    (0, 'Closed'),
    (1, 'Open');

