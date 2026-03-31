CREATE TABLE IF NOT EXISTS fire_hydrant_assignment_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO fire_hydrant_assignment_type (code, description)
VALUES
    (1, 'Flow Test'),
    (2, 'Flush');
