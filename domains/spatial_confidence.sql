BEGIN;

CREATE TABLE IF NOT EXISTS spatial_confidence (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO spatial_confidence (code, description)
VALUES
(0, 'Unknown'),
(1, 'High'),
(2, 'Medium'),
(3, 'Low');

COMMIT;
