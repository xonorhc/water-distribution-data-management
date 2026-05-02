-- TABLE: asset_type_structure_line_pipeline_casing
CREATE TABLE IF NOT EXISTS types.asset_type_structure_line_pipeline_casing (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);
