CREATE TABLE IF NOT EXISTS lifecycle (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO lifecycle (description)
VALUES
    ('Unknown'),
    ('Proposed'),
    ('Approved'),
    ('Under Construction'),
    ('In Service'),
    ('To Be Retired'),
    ('Abandoned'),
    ('Retired'),
    ('Removed'),
    ('Out of Service');
