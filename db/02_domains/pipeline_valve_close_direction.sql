-- TABLE: pipeline_valve_close_direction
CREATE TABLE IF NOT EXISTS domains.pipeline_valve_close_direction (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

