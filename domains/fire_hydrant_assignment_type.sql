CREATE TABLE IF NOT EXISTS fire_hydrant_assignment_type (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO fire_hydrant_assignment_type (description)
VALUES
    ('Flow Test'),
    ('Flush');
