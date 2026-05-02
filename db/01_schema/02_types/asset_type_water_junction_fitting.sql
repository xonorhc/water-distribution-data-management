-- TABLE: asset_type_water_junction_fitting
CREATE TABLE IF NOT EXISTS types.asset_type_water_junction_fitting (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

