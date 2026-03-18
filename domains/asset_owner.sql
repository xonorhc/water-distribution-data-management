CREATE TABLE IF NOT EXISTS asset_owner (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_owner (description)
VALUES
    ('Our Agency'),
    ('Private'),
    ('Other');
