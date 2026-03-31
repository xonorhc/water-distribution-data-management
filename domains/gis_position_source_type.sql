CREATE TABLE IF NOT EXISTS gis_position_source_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO gis_position_source_type (code, description)
VALUES
    (0, 'Unknown'),
    (1, 'User defined'),
    (2, 'Integrated (System) Location Provider'),
    (3, 'External GNSS Receive'),
    (4, 'Network Location Provider'),
    (5, 'Snapped');
