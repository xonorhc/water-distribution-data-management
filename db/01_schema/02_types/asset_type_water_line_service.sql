-- TABLE: asset_type_water_line_service
CREATE TABLE IF NOT EXISTS types.asset_type_water_line_service (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

