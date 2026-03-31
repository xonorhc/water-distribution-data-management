CREATE TABLE IF NOT EXISTS spatial_source (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO spatial_source (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'As-Built'),
    (2, 'CAD'),
    (3, 'Digitilized'),
    (4, 'GPS/GNSS'),
    (5, 'Field Sketch');
