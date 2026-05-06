-- TABLE: water_main_material
CREATE TABLE IF NOT EXISTS domains.water_main_material (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

