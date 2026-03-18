CREATE TABLE IF NOT EXISTS pipeline_casing_diameter types (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

-- TODO: INSERT INTO pipeline_casing_diameter (code, description) VALUES
