BEGIN;

CREATE TABLE IF NOT EXISTS water_supply_filtration_type (
    code smallint PRIMARY KEY,
    description varchar(64) NOT NULL,
    details varchar(255)
);

INSERT INTO water_supply_filtration_type (code, description)
VALUES
(1, 'Carbon'),
(2, 'Reverse Osmosis'),
(3, 'Ultraviolet Light'),
(4, 'Sediment'),
(5, 'Biological');

COMMIT;
