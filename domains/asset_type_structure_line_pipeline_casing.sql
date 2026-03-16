-- FIX: Change this name
CREATE TABLE IF NOT EXISTS asset_type_structure_line_pipeline_casing (
    code smallserial,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_structure_line_pipeline_casing (description)
VALUES
    ("Unknow"),
    ("Casing");
