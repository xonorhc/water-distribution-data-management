CREATE TABLE IF NOT EXISTS spatial_source (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO spatial_source (description)
VALUES
    ('Unknown'),
    ('As-Built'),
    ('CAD'),
    ('Digitilized'),
    ('GPS/GNSS'),
    ('Field Sketch');
