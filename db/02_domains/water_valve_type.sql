-- TABLE: water_valve_type
CREATE TABLE IF NOT EXISTS domains.water_valve_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

