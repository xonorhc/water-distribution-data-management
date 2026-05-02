-- TABLE: spatial_confidence
CREATE TABLE IF NOT EXISTS types.spatial_confidence (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

