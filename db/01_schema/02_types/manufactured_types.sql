-- TABLE: manufactured_types
CREATE TABLE IF NOT EXISTS types.manufactured_types (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

