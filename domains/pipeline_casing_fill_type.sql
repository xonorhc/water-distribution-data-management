CREATE TABLE IF NOT EXISTS pipeline_casing_fill_type (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO pipeline_casing_fill_type (description)
VALUES
    ('Unknown'),
    ('Grout'),
    ('Pea Gravel'),
    ('Sand');
