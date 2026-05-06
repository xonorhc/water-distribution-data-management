-- TABLE: asset_type_water_line_water_main
CREATE TABLE IF NOT EXISTS domains.asset_type_water_line_water_main (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

