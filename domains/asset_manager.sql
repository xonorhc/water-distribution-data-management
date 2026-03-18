CREATE TABLE IF NOT EXISTS asset_manager (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_manager (description)
VALUES
    ('Our Agency'),
    ('Private'),
    ('Other');
