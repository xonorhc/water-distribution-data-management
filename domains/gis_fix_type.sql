CREATE TABLE IF NOT EXISTS gis_fix_type_domain (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO gis_fix_type_domain (description)
VALUES
    ('Fix not valid'),
    ('GPS'),
    ('Differential GPS'),
    ('RTK Fixed'),
    ('RTK Float');
