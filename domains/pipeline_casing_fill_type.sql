BEGIN;

CREATE TABLE IF NOT EXISTS pipeline_casing_fill_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO pipeline_casing_fill_type (code, description)
VALUES
(1, 'Grout'),
(2, 'Pea Gravel'),
(3, 'Sand');

COMMIT;
