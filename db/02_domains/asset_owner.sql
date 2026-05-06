-- TABLE: asset_owner
CREATE TABLE IF NOT EXISTS domains.asset_owner (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);
