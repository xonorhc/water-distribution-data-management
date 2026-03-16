CREATE TABLE IF NOT EXISTS yes_no (
    code smallserial,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO yes_no (description)
VALUES
    ("Unknow"),
    ("Yes"),
    ("No"),
    ("N/A");
