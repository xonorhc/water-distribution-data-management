CREATE TABLE IF NOT EXISTS adoption_status (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO adoption_status (code, description)
VALUES
    (1, 'Available'),
    (2, 'Adopted');
