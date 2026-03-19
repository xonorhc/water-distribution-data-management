CREATE TABLE IF NOT EXISTS water_treatment_plant_type (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_treatment_plant_type (description)
VALUES
    ('Goundwater'),
    ('Surface Water'),
    ('Desalination');
