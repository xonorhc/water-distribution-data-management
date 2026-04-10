BEGIN;

CREATE TABLE IF NOT EXISTS asset_type_structure_line_pipeline_casing (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO asset_type_structure_line_pipeline_casing (code, description)
VALUES
(1, 'Casing');

COMMIT;
