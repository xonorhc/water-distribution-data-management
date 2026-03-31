CREATE TABLE IF NOT EXISTS asset_manager (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_manager (code, description)
VALUES
    (1, 'Our Agency'),
    (2, 'Private'),
    (3, 'Other');
