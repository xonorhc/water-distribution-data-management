BEGIN;

CREATE TABLE IF NOT EXISTS water_treatment_plant_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_treatment_plant_type (code, description)
VALUES
(1, 'Goundwater'),
(2, 'Surface Water'),
(3, 'Desalination');

COMMIT;
