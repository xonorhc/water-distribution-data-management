-- TABLE: water_fire_hydrant_manufacturer
CREATE TABLE IF NOT EXISTS types.water_fire_hydrant_manufacturer (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

