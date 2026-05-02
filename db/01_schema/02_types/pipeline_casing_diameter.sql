-- TABLE: pipeline_casing_diameter
CREATE TABLE IF NOT EXISTS types.pipeline_casing_diameter (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

