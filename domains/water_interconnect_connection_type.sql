BEGIN;

CREATE TABLE IF NOT EXISTS water_interconnect_connection_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_interconnect_connection_type (code, description)
VALUES
(1, 'Buy'),
(2, 'Sell'),
(3, 'Buy or Sell');

COMMIT;
