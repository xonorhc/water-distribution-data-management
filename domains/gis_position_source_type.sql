CREATE TABLE IF NOT EXISTS gis_position_source_type (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO gis_position_source_type (description)
VALUES
    ('Unknown'),
    ('User defined'),
    ('Integrated (System) Location Provider'),
    ('External GNSS Receive'),
    ('Network Location Provider'),
    ('Snapped');
