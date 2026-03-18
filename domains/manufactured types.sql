CREATE TABLE IF NOT EXISTS manufactured types (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO manufactured types (description)
VALUES
    ('Ames Company Inc'),
    ('BAVCO'),
    ('Cla-Val'),
    ('Conbraco Industries Inc'),
    ('Febco Backflow Prevention'),
    ('Danfoss Flomatic Valve'),
    ('Mid-West Instrument'),
    ('Watts Regulator'),
    ('Hunter Industries'),
    ('Wilkins/Zurn Industries'),
    ('Other');
