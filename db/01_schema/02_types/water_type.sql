-- TABLE: water_type
CREATE TABLE IF NOT EXISTS types.water_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

