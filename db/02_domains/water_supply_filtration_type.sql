-- TABLE: water_supply_filtration_type
CREATE TABLE IF NOT EXISTS domains.water_supply_filtration_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

