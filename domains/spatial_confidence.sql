CREATE TABLE IF NOT EXISTS spatial_confidence (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO spatial_confidence (description)
VALUES
    ('Unknown'),
    ('High'),
    ('Medium'),
    ('Low');
