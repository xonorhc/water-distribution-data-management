CREATE TABLE IF NOT EXISTS lifecycle (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO lifecycle (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'Proposed'),
    (2, 'Approved'),
    (3, 'Under Construction'),
    (4, 'In Service'),
    (5, 'To Be Retired'),
    (6, 'Abandoned'),
    (7, 'Retired'),
    (8, 'Removed'),
    (9, 'Out of Service');

