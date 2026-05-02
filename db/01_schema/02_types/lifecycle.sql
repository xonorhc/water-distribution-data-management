-- TABLE: lifecycle
CREATE TABLE IF NOT EXISTS types.lifecycle (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

