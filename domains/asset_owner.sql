BEGIN;

CREATE TABLE IF NOT EXISTS asset_owner (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_owner (code, description)
VALUES
(1, 'Our Agency'),
(2, 'Private'),
(3, 'Other');

COMMIT;
