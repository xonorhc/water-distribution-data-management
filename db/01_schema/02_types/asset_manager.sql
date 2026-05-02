-- TABLE: asset_manager
CREATE TABLE IF NOT EXISTS types.asset_manager (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);
