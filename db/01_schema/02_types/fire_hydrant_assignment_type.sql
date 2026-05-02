-- TABLE: fire_hydrant_assignment_type
CREATE TABLE IF NOT EXISTS types.fire_hydrant_assignment_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

