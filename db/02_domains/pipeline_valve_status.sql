-- TABLE: pipeline_valve_status
CREATE TABLE IF NOT EXISTS domains.pipeline_valve_status (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

