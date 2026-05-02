-- TABLE: water_service_material
CREATE TABLE IF NOT EXISTS types.water_service_material (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

