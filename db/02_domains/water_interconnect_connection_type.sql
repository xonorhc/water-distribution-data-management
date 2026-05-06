-- TABLE: water_interconnect_connection_type
CREATE TABLE IF NOT EXISTS domains.water_interconnect_connection_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

