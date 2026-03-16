CREATE TABLE IF NOT EXISTS adoption_status (
    code smallserial,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO adoption_status (description)
VALUES
    ("Available"),
    ("Adopted");
