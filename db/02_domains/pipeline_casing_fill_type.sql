-- TABLE: pipeline_casing_fill_type
CREATE TABLE IF NOT EXISTS domains.pipeline_casing_fill_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

