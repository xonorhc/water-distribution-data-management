CREATE TABLE IF NOT EXISTS water_sample_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_sample_type (code, description)
VALUES
    (1, 'Grab Sample'),
    (2, 'Composite Sample'),
    (3, 'Other');
