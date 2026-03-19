CREATE TABLE IF NOT EXISTS water_sample_type (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_sample_type (description)
VALUES
    ('Grab Sample'),
    ('Composite Sample'),
    ('Other');
