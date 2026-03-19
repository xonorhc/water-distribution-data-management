CREATE TABLE IF NOT EXISTS water_type (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_type (description)
VALUES
    ('Unknown'),
    ('Potable'),
    ('Irrigation'),
    ('Fire'),
    ('Raw'),
    ('Intermediate'),
    ('Finished');
