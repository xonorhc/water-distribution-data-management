CREATE TABLE IF NOT EXISTS gis_fix_type_domain (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO gis_fix_type_domain (code, description)
VALUES
    (1, 'Fix not valid'),
    (2, 'GPS'),
    (3, 'Differential GPS'),
    (4, 'RTK Fixed'),
    (5, 'RTK Float');
