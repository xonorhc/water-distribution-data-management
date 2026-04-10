BEGIN;

CREATE TABLE IF NOT EXISTS water_fire_hydrant_manufacturer (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_fire_hydrant_manufacturer (code, description)
VALUES
(0, 'Unknown'),
(1, 'American Darling'),
(2, 'Clow Corporation'),
(3, 'Corey'),
(4, 'Dresser'),
(5, 'Eddy'),
(6, 'Iowa Valve'),
(7, 'Kennedy Valve'),
(8, 'M&H Valve'),
(9, 'Mueller CompanyA'),
(10, 'Traverse City'),
(11, 'US Pipe'),
(12, 'Waterous'),
(13, 'Wood-Mathews'),
(14, 'Other');

COMMIT;
