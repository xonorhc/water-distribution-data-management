BEGIN;

CREATE TABLE IF NOT EXISTS pipeline_valve_close_direction (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO pipeline_valve_close_direction (code, description)
VALUES
(1, 'Counter Clockwise'),
(2, 'Clockwise');

COMMIT;
