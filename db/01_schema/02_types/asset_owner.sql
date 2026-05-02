-- TABLE: asset_owner
CREATE TABLE IF NOT EXISTS types.asset_owner (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);
