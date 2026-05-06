-- TABLE: lifecycle
CREATE TABLE IF NOT EXISTS domains.lifecycle (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

