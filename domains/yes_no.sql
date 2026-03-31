CREATE TABLE IF NOT EXISTS yes_no (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO yes_no (code, description)
VALUES
    (0, 'Unknow'),
    (1, 'Yes'),
    (2, 'No'),
    (3, 'N/A');
