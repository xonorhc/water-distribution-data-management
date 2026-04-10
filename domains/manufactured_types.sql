BEGIN;

CREATE TABLE IF NOT EXISTS manufactured_types (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO manufactured_types (code, description)
VALUES
(0, 'Unknown'),
(1, 'Ames Company Inc'),
(2, 'BAVCO'),
(3, 'Cla-Val'),
(4, 'Conbraco Industries Inc'),
(5, 'Febco Backflow Prevention'),
(6, 'Danfoss Flomatic Valve'),
(7, 'Mid-West Instrument'),
(8, 'Watts Regulator'),
(9, 'Hunter Industries'),
(10, 'Wilkins/Zurn Industries'),
(11, 'Other');

COMMIT;
