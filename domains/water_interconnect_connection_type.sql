CREATE TABLE IF NOT EXISTS water_interconnect_connection_type (
    code smallserial PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_interconnect_connection_type (description)
VALUES
    ('Buy'),
    ('Sell'),
    ('Buy or Sell');
