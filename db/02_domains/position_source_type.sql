-- TABLE: position_source_type
CREATE TABLE IF NOT EXISTS domains.position_source_type (
    code smallint,
    description varchar(64) NOT NULL,
    details varchar(2000),
    PRIMARY KEY (code)
);
