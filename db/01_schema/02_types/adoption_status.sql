-- TABLE: adoption_status
CREATE TABLE IF NOT EXISTS types.adoption_status (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);
