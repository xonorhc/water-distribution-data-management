-- TABLE: spatial_source
CREATE TABLE IF NOT EXISTS domains.spatial_source (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

